from flask import Flask, request, jsonify
from PIL import Image
import cv2
import numpy as np
import pytesseract
from sklearn.cluster import KMeans

app = Flask(__name__)

@app.route('/process_image', methods=['POST'])
def process_image():
    try:
        # Terima gambar dari Flutter
        image_data = request.files['image'].read()
        print("Image received successfully.")  # Pesan debug
        image_np = np.frombuffer(image_data, np.uint8)
        img = cv2.imdecode(image_np, cv2.IMREAD_COLOR)

        # PREPROCESSING
        h, w, ch = img.shape
        data = img / 255.0
        data = data.reshape(h * w, ch)

        # Proses segmentasi dengan K-Means
        kmeans = KMeans(n_clusters=2, n_init=8)
        kmeans.fit(data)
        predict = kmeans.predict(data)
        cluster_centers = kmeans.cluster_centers_
        new_colors = cluster_centers[predict]
        img_recolored = new_colors.reshape((h, w, ch))
        pytesseract.pytesseract.tesseract_cmd = r'C:/Program Files/Tesseract-OCR/tesseract.exe'

        img_recolored_uint8 = (img_recolored * 255).astype(np.uint8)
        # custom_config = r'--oem 3 --psm 6'
        # Deteksi teks pada gambar
        detected_text = pytesseract.image_to_string(img_recolored_uint8)

        # Periksa apakah teks terdeteksi kosong
        if not detected_text.strip():
            return jsonify({"detected_text": "Tidak ada teks terbaca"})

        return jsonify({"detected_text": detected_text})
    except Exception as e:
        print("Error processing image:", e)  # Pesan debug
        return jsonify({"error": "Kesalahan saat memproses gambar", "details": str(e)})

if __name__ == '__main__':
    app.run(debug=True)
