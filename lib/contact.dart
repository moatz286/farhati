import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      body: ContactUs(
        // logo: AssetImage('images/crop.jpg'),
        email: 'f2rh2ti@gmail.com',
        companyName: 'FARHATI',
        phoneNumber: '+249123456789',
        dividerThickness: 2,
        website: 'https://farhati.com',
        // githubUserName: 'AbhishekDoshi26',
        // linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
        tagLine: 'For booking wedding halls',
        twitterHandle: 'F2rh2ti249',
        cardColor: Colors.lightBlue.shade100,
        companyColor: Colors.lightBlue.shade300,
        taglineColor: Colors.blue.shade500,
        textColor: Colors.black38,
        dividerColor: Colors.lightBlue.shade200,
        // instagramUserName: '_abhishek_doshi',
      ),
    );
  }
}
