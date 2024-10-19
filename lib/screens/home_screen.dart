import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_flutter/screens/about_screen.dart';
import 'package:test_flutter/screens/additional_screen.dart';
import 'package:test_flutter/screens/author_screen.dart';
import 'package:test_flutter/screens/mundarija_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = const TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage:
                              AssetImage('assets/images/avatarka.jpg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'KURASH USULLARI',
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            // Text(
                            //   '4101410141',
                            //   style: TextStyle(
                            //       fontSize: 14,
                            //       color: Colors.white,
                            //       fontFamily: "Montserrat Regular"),
                            //)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Get.to(const AboutScreen());
                            },
                            splashColor: Colors.blue.withOpacity(0.8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/home.png',
                                  scale: 8,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Ilova haqida\n ma'lumot",
                                  style: cardTextStyle,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Get.to(const MundarijaScreen());
                            },
                            splashColor: Colors.blue.withOpacity(0.8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/content.png',
                                  scale: 8,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Kurash texnik\n usullari',
                                  textAlign: TextAlign.center,
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Get.to(const AdditionalScreen());
                            },
                            splashColor: Colors.blue.withOpacity(0.8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/additional.png',
                                  scale: 8,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Mushaklarni cho‘zuvchi mashqlar',
                                  textAlign: TextAlign.center,
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Get.to(const AuthorScreen());
                            },
                            splashColor: Colors.blue.withOpacity(0.8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/man.png',
                                  scale: 8,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Muallif haqida',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
