import 'package:farhati/servers.dart';
import 'package:farhati/signup.dart';
import 'package:flutter/material.dart';
import 'authentication.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";
    bool _saving = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "تسجيل الدخول",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // actions: [
        //   TextButton(
        //       onPressed: () {},
        //       child: const Text(
        //         "رجوع",
        //         style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 18,
        //             fontWeight: FontWeight.bold),
        //       )),
        // ],
      ),
      body: ModalProgressHUD(
        inAsyncCall: _saving,
        child: ListView(
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              "نظام حجز صالات الاعراس و المناسبات",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
              elevation: 5,
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 5.0),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      label: Center(
                        child: Text("اسم المستخدم"),
                      ),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 5.0),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
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
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  child: const Text("انشاء حساب",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("نسيت كلمة السر؟",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                  // style: ElevatedButton.styleFrom(
                  //   primary: const Color.fromARGB(248, 248, 180, 162),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: ()  {
                  // setState(() {
                  //   _saving = true;
                  // });
                  AuthenticationHelper()
                      .signIn(email: email, password: password)
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
                  setState(() {
                    _saving = false;
                  });
                },
                child: const Text(
                  "تسجيل الدخول",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.blueAccent)),
                ),
                // clipBehavior: Clip.hardEdge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
