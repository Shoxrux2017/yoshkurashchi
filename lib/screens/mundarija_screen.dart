import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/screens/usullar_screen.dart';

class MundarijaScreen extends StatefulWidget {
  const MundarijaScreen({super.key});

  @override
  State<MundarijaScreen> createState() => _MundarijaScreenState();
}

class _MundarijaScreenState extends State<MundarijaScreen> {
  List<String> title = [
    'SUPURMA USULLARI',
    'CHIL USULLARI',
    "QO'SHSHA USULLARI",
    'YUK (YUKLAMA) USULLARI',
    'YELKA USULLARI',
    'BARDOR USULLARI',
    'YONBOSH USULLARI'
  ];

  List<String> imgPath = [
    'assets/images/mundarija_img/1.jpg',
    'assets/images/mundarija_img/2.jpg',
    'assets/images/mundarija_img/3.jpg',
    'assets/images/mundarija_img/4.jpg',
    'assets/images/mundarija_img/5.jpg',
    'assets/images/mundarija_img/6.jpg',
    'assets/images/mundarija_img/7.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mundarija',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue, Color.fromARGB(255, 207, 230, 250)],
          ),
        ),
        child: ListView.builder(
            itemCount: title.length,
            itemBuilder: (_, index) {
              return index.isEven
                  ? Container(
                      // width: MediaQuery.of(context).size.width * 0.8,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            UsullarScreen(
                              usullarId: index,
                              title: title[index],
                            ),
                          );
                        },
                        borderRadius:
                            const BorderRadius.all(Radius.circular(80)),
                        splashColor: Colors.blue,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(left: 30, right: 25),
                          height: 110,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(imgPath[index]))),
                              ),
                              Expanded(
                                child: Text(
                                  title[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            UsullarScreen(
                              usullarId: index,
                              title: title[index],
                            ),
                          );
                        },
                        borderRadius:
                            const BorderRadius.all(Radius.circular(80)),
                        splashColor: Colors.blue,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(left: 30, right: 25),
                          height: 110,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  title[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(imgPath[index]))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
            }),
      ),
    );
  }
}
