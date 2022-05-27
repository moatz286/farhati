import 'package:farhati/prev_reserves.dart';
import 'package:farhati/resrve.dart';
import 'package:farhati/reverse_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:farhati/consts.dart';
import 'package:animated_check/animated_check.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ReserveDetails extends StatefulWidget {
  final String owner;
  final double priceDay;
  final double priceNight;
  final String chairs;
  final String phone;
  final String name;

  const ReserveDetails({
    Key? key,
    required this.owner,
    required this.priceDay,
    required this.priceNight,
    required this.chairs,
    required this.phone,
    required this.name,
  }) : super(key: key);
  @override
  State<ReserveDetails> createState() => _ReserveDetailsState();
}

class _ReserveDetailsState extends State<ReserveDetails>
    with TickerProviderStateMixin {
  String dropdownvalue = 'صباح';

  // List of items in our dropdown menu
  var items = [
    'صباح',
    'مساء',
  ];
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  final TextEditingController _textEditingController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(
      builder: (context, data, child) {
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
              Card(
                elevation: 8,
                child: Column(children: [
                  Padding(
                    padding: kMyPadding,
                    child: TextField(
                      decoration: InputDecoration(
                        border: kMyOutLine,
                        label: const Text('اسم المستخدم'),
                        constraints: const BoxConstraints(maxHeight: 50),
                        hintText: user.email.toString(),
                        prefixStyle: const TextStyle(color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      // autofocus: true,

                      readOnly: true,
                    ),
                  ),
                  Padding(
                    padding: kMyPadding,
                    child: TextField(
                      decoration: InputDecoration(
                        border: kMyOutLine,
                        label: const Text('صاحب الصالة'),
                        constraints: const BoxConstraints(maxHeight: 50),
                        hintText: widget.owner,
                        prefixStyle: const TextStyle(color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      // autofocus: true,
                      readOnly: true,
                    ),
                  ),
                  Padding(
                    padding: kMyPadding,
                    child: TextField(
                      decoration: InputDecoration(
                          border: kMyOutLine,
                          label: const Text('سعر الصباح'),
                          constraints: const BoxConstraints(maxHeight: 50),
                          hintText: widget.priceDay.toString(),
                          floatingLabelBehavior: FloatingLabelBehavior.always),
                      readOnly: true,
                    ),
                  ),
                  Padding(
                    padding: kMyPadding,
                    child: TextField(
                      decoration: InputDecoration(
                          border: kMyOutLine,
                          label: const Text('سعر المساء'),
                          constraints: const BoxConstraints(maxHeight: 50),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: widget.priceNight.toString()),
                    ),
                  ),
                  Padding(
                    padding: kMyPadding,
                    child: TextField(
                      decoration: InputDecoration(
                          border: kMyOutLine,
                          label: const Text('عدد الكراسي'),
                          constraints: const BoxConstraints(maxHeight: 50),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: widget.chairs),
                      readOnly: true,
                    ),
                  ),
                  Padding(
                    padding: kMyPadding,
                    child: TextField(
                      decoration: InputDecoration(
                          border: kMyOutLine,
                          label: const Text('تاريخ الحجز'),
                          constraints: const BoxConstraints(maxHeight: 50),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: DateFormat.yMMMd().format(selectedDate)),
                      focusNode: AlwaysDisabledFocusNode(),
                      controller: _textEditingController,
                      onTap: () {
                        _selectDate(context);
                      },
                      onChanged: (value) {
                        value = selectedDate.toString();
                      },
                    ),
                  ),
                  Padding(
                    padding: kMyPadding,
                    child: TextField(
                      decoration: InputDecoration(
                        border: kMyOutLine,
                        label: const Text('عدد الكراسي'),
                        constraints: const BoxConstraints(maxHeight: 50),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: widget.chairs,
                      ),
                      readOnly: true,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DropdownButton(

                        // Initial Value
                        value: dropdownvalue,
                        focusColor: Colors.grey,
                        dropdownColor: Colors.grey,
                        elevation: 8,
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
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("الغاء العملية",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      data.addItem(PrevReserves(
                          name: user.email,
                          hall: widget.name,
                          date: DateFormat.yMMMd().format(selectedDate),
                          phone: widget.phone));
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              children: [
                                AnimatedCheck(
                                  progress: _animation,
                                  size: 200,
                                ),
                                const Text(
                                  'تم الحجز',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Reserve()));
                                    },
                                    child: const Card(
                                      elevation: 8,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 18,
                                        ),
                                        child: Text(
                                          'تم',
                                          style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ))
                              ],
                            );
                          });
                      _controller.forward();
                    },
                    child: const Text(
                      "حجز",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
