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
        "Muhamad Rafi Prabowo. Aku Rafi. Lorem ipsum dolor sit amet consectetur adipisicing elit.",
    "image":
        "https://www.yorokobe.com/content/images/size/w2000/2023/08/megumi-2.jpg"
  },
  "Example": {
    "title":
    "Muhamad Rafi Prabowo. Aku Rafi. Lorem ipsum dolor sit amet consectetur adipisicing elit.",
    "image":
    "https://www.yorokobe.com/content/images/size/w2000/2023/08/megumi-2.jpg"
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
                    title: homeCards["Nama"]?['title'] ?? "",
                    img: homeCards["Nama"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_nama');
                    },
                  ),
                  CardSmall(
                    //change here
                    cta: "View Profile",
                    title: homeCards["examples"]?['title'] ?? "",
                    img: homeCards["examples"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_examples');
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              CardHorizontal(
                //change here
                cta: "View Profile",
                title: homeCards["examples"]?['title'] ?? "",
                img: homeCards["examples"]?['image'] ?? "",
                tap: () {
                  Navigator.pushNamed(context, '/profile_examples');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
