import 'package:flutter/material.dart';

import 'package:ocr_app/constants/Theme.dart';

//widgets
import 'package:ocr_app/widgets/navbar.dart';
import 'package:ocr_app/widgets/card-horizontal.dart';
import 'package:ocr_app/widgets/card-small.dart';
import 'package:ocr_app/widgets/drawer.dart';
import 'package:ocr_app/widgets/card-horizontal.dart';
import 'package:ocr_app/widgets/card-small.dart';
import 'package:ocr_app/widgets/navbar.dart';

// import 'package:image_picker_flutter/screens/product.dart';

final Map<String, Map<String, String>> homeCards = {
  "Rafi": {
    "title":
        "Muhamad Rafi Prabowo. Polinema D4-TI.",
    "image":
        "https://www.yorokobe.com/content/images/size/w2000/2023/08/megumi-2.jpg"
  },
  
  "Edwin": {
    "title":
    "M. Edwin Isa Alfais. Polinema D4-TI.",
    "image":
      "https://i.pinimg.com/736x/75/e8/da/75e8da59a3b129a38b43648e392fefc8.jpg"
  },

  "Abun": {
    "title":
    "M. Akbar. Polinema D4-TI.",
    "image":
      "https://i.pinimg.com/736x/6a/07/ba/6a07ba333669a2868959939bab9e7e11.jpg"
  }
};

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "Home",
        searchBar: true,
        // categoryOne: "Trending",
        // categoryTwo: "Fashion",
        getCurrentPage: () {},
        searchController: TextEditingController(),
        searchOnChanged: (String value) {},
        tags: [],
      ),
      backgroundColor: NowUIColors.bgColorScreen,
      drawer: NowDrawer(currentPage: "Home"),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: CardHorizontal(
                  cta: "View Profile",
                  title: homeCards["Rafi"]?['title'] ?? "",
                  img: homeCards["Rafi"]?['image'] ?? "",
                  tap: () {
                    Navigator.pushNamed(context, '/profile_rafi');
                  },
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardSmall(
                    //change here
                    cta: "View Profile",
                    title: homeCards["Edwin"]?['title'] ?? "",
                    img: homeCards["Edwin"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_edwin');
                    },
                  ),
                  CardSmall(
                    //change here
                    cta: "View Profile",
                    title: homeCards["Abun"]?['title'] ?? "",
                    img: homeCards["Abun"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_abun');
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              CardHorizontal(
                //change here
                cta: "View Profile",
                title: homeCards["Abhel"]?['title'] ?? "",
                img: homeCards["Abhel"]?['image'] ?? "",
                tap: () {
                  Navigator.pushNamed(context, '/profile_abhel');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
