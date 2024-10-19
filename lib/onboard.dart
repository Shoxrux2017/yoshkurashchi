import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_flutter/constant.dart';
import 'package:test_flutter/model/allinonboardscreen.dart';
import 'package:test_flutter/screens/home_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;

  List<AllinOnboardModel> allinonboardlist = [
    // AllinOnboardModel(
    //     "assets/images/designf.jpg",
    //     "There are many variations of passages of Lorem Ipsum available. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary",
    //     "Prepard by exparts"),
    // AllinOnboardModel(
    //     "assets/images/designs.jpg",
    //     "There are many variations of passages of Lorem Ipsum available. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary",
    //     "Delivery to your home"),
    AllinOnboardModel(
        "assets/images/bg.png",
        "Oʻzbek milliy sport turi. Belgilangan qoidaga muvofiq ikki sportchining yakkama-yakka olishuvi. Kurashish sanʼati koʻp xalqlarda qadim zamonlardan buyon maʼlum",
        "Milliy kurash"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ("Yosh kurashchi".toUpperCase()),
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue, Color.fromARGB(255, 207, 230, 250)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'))),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () => Get.to(const HomeScreen()),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 32, 148, 226),
                shape: const RoundedRectangleBorder(side: BorderSide.none),
              ),
              child: const Text(
                "Boshlash",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? primarygreen : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
