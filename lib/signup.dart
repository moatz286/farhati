import 'package:farhati/consts.dart';
import 'package:farhati/login.dart';
import 'package:farhati/servers.dart';
import 'package:flutter/material.dart';

import 'authentication.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "التسجيل",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "رجوع",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
      body: SizedBox(
        // color: const Color.fromARGB(239, 87, 218, 241),
        width: double.infinity,
        child: ListView(children: [
          const SizedBox(
            height: 8,
          ),
          Card(
              elevation: 5,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: kMyOutLine,
                        label: Center(child: Text("اسم المستخدم")),
                        suffixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.blue,
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        constraints: BoxConstraints(maxHeight: 50),
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: kMyOutLine,
                        label: Center(child: Text("رقم الهاتف")),
                        suffixIcon: Icon(
                          Icons.phone_enabled_outlined,
                          color: Colors.blue,
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        constraints: BoxConstraints(maxHeight: 50),
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: kMyOutLine,
                        label: Center(child: Text("البريد الالكتروني")),
                        suffixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.blue,
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        constraints: BoxConstraints(maxHeight: 50),
                      ),
                      textAlign: TextAlign.end,
                      onChanged: (String value) {
                        email = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 8),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: kMyOutLine,
                          label: Center(child: Text("كلمة المرور")),
                          constraints: BoxConstraints(maxHeight: 50),
                          suffixIcon: Icon(
                            Icons.lock_outlined,
                            color: Colors.blue,
                          ),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                        ),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        textAlign: TextAlign.end,
                        onChanged: (String value) {
                          password = value;
                        },
                      )),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          border: kMyOutLine,
                          label: Center(child: Text("تأكيد كلمة المرور")),
                          constraints: BoxConstraints(maxHeight: 50),
                          suffixIcon: Icon(
                            Icons.sync_lock,
                            color: Colors.blue,
                          ),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                        ),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        textAlign: TextAlign.end,
                      )),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: kMyOutLine,
                        label: Center(child: Text("المدينة")),
                        constraints: BoxConstraints(maxHeight: 50),
                        suffixIcon: Icon(
                          Icons.location_city_rounded,
                          color: Colors.blue,
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: TextField(
                        decoration: InputDecoration(
                      border: kMyOutLine,
                      label: Center(child: Text("العنوان")),
                      constraints: BoxConstraints(maxHeight: 50),
                      suffixIcon: Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                    )),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(
                left: 180, right: 30, top: 15, bottom: 35),
            child: ElevatedButton(
              onPressed: () {
                // Get username and password from the user.Pass the data to
// helper method

                AuthenticationHelper()
                    .signUp(email: email, password: password)
                    .then((result) {
                  if (result == null) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Servers()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        result,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ));
                  }
                });
              },
              child: const Text(
                "تسجيل",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                // maximumSize: const Size(20, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const LogIn()));
                },
                child: const Text(
                  "هل لديك حساب لتسجيل الدخول؟",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
