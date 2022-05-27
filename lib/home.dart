import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    //  var size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Container(
        color: Colors.grey,
        // margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 60.0, bottom: 100.0),
              child: Text(
                "مرحبا بك في نظام حجز صالات الاعراس و المناسبات",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
              child: Image(
                image: AssetImage("images/gold.png"),
                // width: double.infinity,
                // height: 200,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                "جميع الحقوق محفوظة",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
