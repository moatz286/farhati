import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "رجوع",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(239, 87, 218, 241),
        width: double.infinity,
        child: Column(children: [
          const Text(
            "نظام حجز صالات الاعراس و المناسبات",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("اسم المستخدم")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("كلمة المرور")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "تسجيل الدخول",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("انشاء حساب جديد",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(248, 248, 180, 162),
            ),
          ),
        ]),
      ),
    );
  }
}
