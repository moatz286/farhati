import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  var size = MediaQuery.of(context).size;
    List<String> list = [
      'images/gold.png',
      'images/gold1.png',
      'images/gold2.png',
      'images/dreams.png',
      'images/dreams1.png',
      // 'images/dreams2.png',
    ];
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
      body: SizedBox(
        // color: Colors.grey,
        // margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (2.5),
                  crossAxisCount: 1,
                  crossAxisSpacing: 5),
              itemCount: list.length,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                  elevation: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage(list[index]),
                            fit: BoxFit.contain,
                            height: 134,
                            width: 149,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 69,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "وصف الصورة",
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Center(child: Text(".........")),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 129,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              " الصورة بواسطة",
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Center(child: Text("abc@gmail.com")),
                          ],
                        ),
                      ),
                      //     borderRadius: BorderRadius.circular(15)),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
