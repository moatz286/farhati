import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
        child: ListView(children: [
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "هل لديك حساب لتسجيل الدخول",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("الاسم الاول")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("الاسم الاخير")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("رقم الهاتف")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("البريد الالكتروني")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("تأكيد كلمة المرور")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("المدينة")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              label: Center(child: Text("العنوان")),
              fillColor: Color.fromARGB(255, 211, 204, 204),
              filled: true,
            )),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              " انشاء حساب ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("الغاء",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
            ),
          ),
        ]),
      ),
    );
  }
}
