import 'package:farhati/reverse_list.dart';
import 'package:provider/provider.dart';

import 'hall.dart';
import 'preview.dart';
import 'resrve_details.dart';
import 'package:flutter/material.dart';

class Reserve extends StatelessWidget {
  const Reserve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Hall> hall = [
      Hall(
          name: 'الصالة الذهبية',
          owner: 'Ahmed Salih',
          priceDay: 320.00,
          priceNight: 450.00,
          chairs: '400',
          phone: '0912345678',
          images: {'firs': 'images/gold.png'})
    ];
    // final List<PrevReserves> prevReserves = [];
    // void addReserve() {}
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
          body: Column(
            children: [
              const Text(
                "اختر من الصالات للحجز او عرض التفاصيل",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SizedBox(
                  width: double.infinity - 10,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hall.length,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          Card(
                            elevation: 5,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    const Text('اسم الصالة'),
                                    Text(hall[index].name),
                                  ],
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  children: [
                                    const Text('صاحب الصالة'),
                                    Text(hall[index].owner),
                                  ],
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  children: [
                                    const Text('سعر الصباح'),
                                    Text(hall[index].priceDay.toString()),
                                  ],
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  children: [
                                    const Text('سعر المساء'),
                                    Text(hall[index].priceNight.toString()),
                                  ],
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  children: [
                                    const Text('الكراسي'),
                                    Text(hall[index].chairs),
                                  ],
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text('هاتف'),
                                    Text(hall[index].phone),
                                  ],
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReserveDetails(
                                                  owner: hall[index].owner,
                                                  priceDay:
                                                      hall[index].priceDay,
                                                  priceNight:
                                                      hall[index].priceNight,
                                                  phone: hall[index].phone,
                                                  chairs: hall[index].chairs,
                                                  name: hall[index].name,
                                                )));
                                  },
                                  child: const Text(
                                    "اختيار الصالة",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Preview()));
                                  },
                                  child: const Text("عرض الصور",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color.fromARGB(
                                        248, 158, 158, 158),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "الحجوزات التي قمت بها",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Divider(
                thickness: 2,
              ),
              Table(
                  border: TableBorder.all(),
                  defaultColumnWidth: const FlexColumnWidth(),
                  children: const [
                    TableRow(children: [
                      Center(child: Text('اسم الصالة')),
                      Center(child: Text('تاريخ الحجز')),
                      Center(child: Text('رقم هاتف')),
                      Center(child: Text('صاحب الحجز')),
                    ])
                  ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SizedBox(
                  width: double.infinity - 10,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.size,
                    itemBuilder: (ctx, index) {
                      final item = data.items[index];
                      return Column(
                        children: [
                          Card(
                            elevation: 5,
                            child: Row(
                              children: [
                                Text(item.hall),
                                const SizedBox(
                                  width: 22,
                                ),
                                Text(item.date),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(item.phone),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(item.name),
                                const SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => ReserveDetails(
                                    //               owner: hall[index].owner,
                                    //               priceDay: hall[index].priceDay,
                                    //               priceNight: hall[index].priceNight,
                                    //               phone: hall[index].phone,
                                    //               chairs: hall[index].chairs,
                                    //             )));
                                  },
                                  child: const Text(
                                    "المزيد",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
