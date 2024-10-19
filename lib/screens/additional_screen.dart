import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/screens/mushaklar_video_screen.dart';

class AdditionalScreen extends StatefulWidget {
  const AdditionalScreen({super.key});

  @override
  State<AdditionalScreen> createState() => _AdditionalScreenState();
}

class _AdditionalScreenState extends State<AdditionalScreen> {
  List info = [];
  Future<void> _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/additional.json")
        .then((value) {
      info = json.decode(value);
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Yosh kurashchilar uchun mushaklarni cho‘zuvchi mashqlar',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Color.fromARGB(255, 207, 230, 250)],
            ),
          ),
          child: ListView.builder(
              itemCount: info.length,
              itemBuilder: (_, index) {
                String splitText = info[index]["add_info"];

                var splitted = splitText.split(":");
                debugPrint(splitted[1]);
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   height: 150,
                          //   width: 150,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(20),
                          //     image: DecorationImage(
                          //         image: AssetImage(
                          //           info[index]["img"],
                          //         ),
                          //         fit: BoxFit.fill),
                          //   ),
                          // ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 150,
                              child: Image.asset(
                                info[index]["img"],
                                fit: BoxFit.fill,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.52,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: info[index]["title_content"],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  text: TextSpan(
                                    text: "${splitted[0]}:",
                                    style: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: splitted[1],
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () => Get.to(
                                      MushaklarVideoScreen(
                                          videoPath: info[index]["video"]),
                                    ),
                                    child: Image.asset(
                                      "assets/images/videoC.png",
                                      scale: 10,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
