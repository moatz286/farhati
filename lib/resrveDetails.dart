import 'package:flutter/material.dart';

class Reserve extends StatefulWidget {
  const Reserve({Key? key}) : super(key: key);

  @override
  State<Reserve> createState() => _ReserveState();
}

class _ReserveState extends State<Reserve> {
  String dropdownvalue = 'صباح';

  // List of items in our dropdown menu
  var items = [
    'صباح',
    'مساء',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
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
        color: const Color.fromARGB(238, 240, 247, 248),
        width: double.infinity,
        child: ListView(children: [
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              label: Center(child: Text("اسم المستخدم")),
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              label: Center(child: Text("صاحب الصالة")),
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              label: Center(child: Text("سعر الصباح")),
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              label: Center(child: Text("سعر المساء")),
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              label: Center(child: Text("عدد الكراسي")),
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              label: Center(child: Text("تاريخ الحجز")),
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              label: Center(child: Text("هاتف للاتصال به")),
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
            )),
          ),
          DropdownButton(

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              }),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "حجز",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.blue),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("الغاء العملية",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
            ),
          ),
        ]),
      ),
    );
  }
}
