import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ocr_app/constants/Theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//widgets
import 'package:ocr_app/widgets/navbar.dart';
import 'package:ocr_app/widgets/drawer.dart';
import 'package:ocr_app/widgets/photo-album.dart';

List<String> imgArray = [
  "assets/imgs/album-1.jpg",
  "assets/imgs/album-2.jpg",
  "assets/imgs/album-3.jpg",
  "assets/imgs/album-4.jpg",
  "assets/imgs/album-5.jpg",
  "assets/imgs/album-6.jpg"
];

class ProfileEdwin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: Navbar(
          title: "Profile",
          transparent: true,
          getCurrentPage: () {},
          searchController: TextEditingController(),
          searchOnChanged: (String value) {},
          tags: [],
        ),
        backgroundColor: NowUIColors.bgColorScreen,
        drawer: NowDrawer(currentPage: "Profile Edwin"),
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/imgs/bg-profile.png"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: <Widget>[
                          SafeArea(
                            bottom: false,
                            right: false,
                            left: false,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/imgs/zoro.jpg"),
                                      radius: 65.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Text("Mohamad Edwin Isa ALfais",
                                        style: TextStyle(
                                            color: NowUIColors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text("2141720193",
                                        style: TextStyle(
                                            color: NowUIColors.white
                                                .withOpacity(0.85),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 24.0, left: 42, right: 32),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.max,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      child: SingleChildScrollView(
                          child: Padding(
                    padding: const EdgeInsets.only(
                        left: 32.0, right: 32.0, top: 42.0),
                    child: Column(children: [
                      Text("About me",
                          style: TextStyle(
                              color: NowUIColors.text,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0)),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 30, bottom: 24),
                        child: Text(
                            "Aku Edwin. Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta mollitia error ratione minus nulla inventore atque odit ad iste deleniti saepe commodi eius sequi laborum eum explicabo sunt nisi necessitatibus perferendis enim fugiat, quis iusto possimus accusamus? Atque ullam reiciendis ea labore, quisquam magnam dolor dolores aliquam facilis eveniet! Animi.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: NowUIColors.time)),
                      ),
                      PhotoAlbum(imgArray: imgArray)
                    ]),
                  ))),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                ),
              ),
            )
          ],
        ));
  }
}

