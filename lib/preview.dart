import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  var size = MediaQuery.of(context).size;

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
        // color: Colors.grey,
        // margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (2),
                  crossAxisCount: 1,
                  crossAxisSpacing: 1),
              itemCount: 10,
              itemBuilder: (BuildContext ctx, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Image(
                          image: AssetImage("images/gold.png"),
                          fit: BoxFit.contain,
                          // height: 200,
                          width: 150,
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
                            "تم رفع الصورة بواسطة",
                            // style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Center(child: Text("abc@gmail.com")),
                        ],
                      ),
                    ),
                    //     borderRadius: BorderRadius.circular(15)),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
