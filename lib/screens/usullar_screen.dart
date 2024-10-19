import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/screens/mushaklar_screen.dart';
import 'package:test_flutter/screens/usullar_mundarija_screen.dart';
import 'package:test_flutter/screens/usullar_show_screen.dart';

class UsullarScreen extends StatelessWidget {
  final int usullarId;
  final String title;
  const UsullarScreen(
      {super.key, required this.usullarId, required this.title});

  @override
  Widget build(BuildContext context) {
    var usullar = [
      [
        'SUPURMA USULLARNI BAJARISHDA ISHTIROK ETUVCHI ASOSIY VA YORDAMCHI MUSHAKLAR',
        'SUPURMA USULLARI BAJARISH TEXNIKASI'
      ],
      [
        'CHIL USULLARNI BAJARISHDA ISHTIROK ETUVCHI ASOSIY VA YORDAMCHI MUSHAKLAR',
        'CHIL USULLARI BAJARISH TEXNIKASI'
      ],
      [
        "QO'SHSHA USULLARNI BAJARISHDA ISHTIROK ETUVCHI ASOSIY VA YORDAMCHI MUSHAKLAR",
        "QO'SHSHA USULLARI BAJARISH TEXNIKASI"
      ],
      [
        'YUK (YUKLAMA) USULLARNI BAJARISHDA ISHTIROK ETUVCHI ASOSIY VA YORDAMCHI MUSHAKLAR',
        'YUK (YUKLAMA) USULLARI BAJARISH TEXNIKASI'
      ],
      [
        'YELKA USULLARNI BAJARISHDA ISHTIROK ETUVCHI ASOSIY VA YORDAMCHI MUSHAKLAR',
        'YELKA USULLARI BAJARISH TEXNIKASI'
      ],
      [
        'BARDOR USULLARNI BAJARISHDA ISHTIROK ETUVCHI ASOSIY VA YORDAMCHI MUSHAKLAR',
        'BARDOR USULLARI BAJARISH TEXNIKASI'
      ],
      [
        'YONBOSH USULLARNI BAJARISHDA ISHTIROK ETUVCHI ASOSIY VA YORDAMCHI MUSHAKLAR',
        'YONBOSH USULLARI BAJARISH TEXNIKASI'
      ],
    ];
    print("HERE USULLAR ID : $usullarId");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue, Color.fromARGB(255, 207, 230, 250)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Get.to(MushaklarScreen(
                    mushaklarId: usullarId,
                  ));
                },
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          usullar[usullarId][0],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Get.to(UsullarMundarijaScreen(
                    usullarId: usullarId,
                  ));
                },
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          usullar[usullarId][1],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
