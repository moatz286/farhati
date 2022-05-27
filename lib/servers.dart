import 'package:farhati/contact.dart';
import 'package:farhati/resrve.dart';
import 'package:flutter/material.dart';

class Servers extends StatelessWidget {
  const Servers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("نظام حجز صالات الاعراس و المناسبات"),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.rectangle,
        ),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
            child: Image(
              image: AssetImage("images/gold.png"),
              // width: double.infinity,
              // height: 200,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Reserve()));
                },
                child: const Text(
                  "قم بالحجز الان",
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Contact()));
                },
                // style: const ButtonStyle(backgroundColor: Colors.white,),
                child: const Text(
                  "اتصل بنا",
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
