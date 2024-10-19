import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/screens/usullar_show_screen.dart';

class UsullarMundarijaScreen extends StatefulWidget {
  final int usullarId;
  const UsullarMundarijaScreen({super.key, required this.usullarId});

  @override
  State<UsullarMundarijaScreen> createState() => _UsullarMundarijaScreenState();
}

class _UsullarMundarijaScreenState extends State<UsullarMundarijaScreen> {
  List info = [];
  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/usullar/lesson${widget.usullarId + 1}.json")
        .then((value) {
      info = json.decode(value);
      setState(() {});
    });
  }

  @override
  void initState() {
    _initData();
    print(info);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Usullar',
          style: TextStyle(fontSize: 30),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: ListView.builder(
            itemCount: info.length,
            itemBuilder: (_, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(UsullarShowScreen(
                      videoUrl: info[index]["video_url"],
                      pdfUrl: info[index]["pdf_url"],
                    ));
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(80)),
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Text(
                            info[index]["title"],
                            style: const TextStyle(
                              fontSize: 17,
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
              );
            },
          ),
        ),
      ),
    );
  }
}
