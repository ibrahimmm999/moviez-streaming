import 'package:flutter/material.dart';
import 'package:moviez_streaming/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 29, left: 24, right: 24, bottom: 30),
        height: 66,
        width: double.infinity,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Moviez",
                  style: purpleText.copyWith(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Watch much easier",
                  style: greyText.copyWith(fontSize: 16),
                )
              ],
            ),
            Spacer(),
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/search-icon.png'))),
            )
          ],
        ),
      );
    }

    Widget moviesSlide() {
      return Container(
        margin: EdgeInsets.only(left: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  margin: EdgeInsets.only(right: 24),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 19),
                        width: 300,
                        height: 207,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("assets/johnwick.png"),
                                fit: BoxFit.cover)),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "John Wick 4",
                                style: purpleText.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Action, Crime",
                                style: greyText,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 87,
                          ),
                          Container(
                            width: 98,
                            height: 18,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/5stars.png"))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  margin: EdgeInsets.only(right: 24),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 19),
                        width: 300,
                        height: 207,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("assets/bohemian.png"),
                                fit: BoxFit.cover)),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bohemian",
                                style: purpleText.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Documentary",
                                style: greyText,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 87,
                          ),
                          Container(
                            width: 98,
                            height: 18,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/5stars.png"))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget movieList() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 24, right: 24, bottom: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From Disney",
              style: purpleText.copyWith(
                  fontSize: 24, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 127,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 127,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/mulan.png"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mulan Session",
                        style: purpleText.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "History, War",
                        style: greyText,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 98,
                        height: 18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/3stars.png"))),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 127,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 127,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/beauty&beast.png"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Beauty & Beast",
                        style: purpleText.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Sci-Fiction",
                        style: greyText,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 98,
                        height: 18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/5stars.png"))),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [header(), moviesSlide(), movieList()],
      ),
    );
  }
}
