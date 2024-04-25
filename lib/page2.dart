import 'package:assignment2/page3.dart';
import 'package:flutter/material.dart';

class PageTw0 extends StatefulWidget {
  const PageTw0({super.key});

  @override
  State<PageTw0> createState() => _PageTw0State();
}

class _PageTw0State extends State<PageTw0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            padding: EdgeInsets.zero,
            style: IconButton.styleFrom(
              foregroundColor: Colors.teal,
              backgroundColor: Colors.green.shade300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const PageThree()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
        title: const Text(
          'Photo Gallery',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Wrap(
          runSpacing: 30,
          spacing: 40,
          direction: Axis.horizontal,
          //alignment: WrapAlignment.spaceBetween,
          //verticalDirection: VerticalDirection.up,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageThree(),
                    ));
              },
              child: const Img(
                  name: "Pininfarina Battista",
                  pic:
                      "https://robbreport.com/wp-content/uploads/2021/12/29.jpg?w=1000"),
            ),
            const Img(
                name: "McLaren F1",
                pic:
                    "https://robbreport.com/wp-content/uploads/2019/12/6092563g.jpg?w=1000"),
            const Img(
                name: "Ferrari Enzo",
                pic:
                    "https://robbreport.com/wp-content/uploads/2022/11/1-w-Enzo-thumbnail_2003-Enzo-Courtesy-RM-Sothebys.jpg?w=1000"),
            const Img(
                name: "Ferrari LaFerrari",
                pic:
                    "https://robbreport.com/wp-content/uploads/2019/12/9863701f.jpg?w=1000"),
            const Img(
              name: "McLaren P1",
              pic:
                  "https://robbreport.com/wp-content/uploads/2019/12/9370122a.jpg?w=1000",
            ),
            const Img(
              name: "Porsche 918 Spyder",
              pic:
                  "https://robbreport.com/wp-content/uploads/2019/12/1561526743.jpg?w=1000",
            ),
            const Img(
              name: "SSC Tuatara",
              pic:
                  "https://robbreport.com/wp-content/uploads/2019/12/ssc-tuatara.jpg?w=1000",
            ),
            const Img(
              name: "Rimac Nevera",
              pic:
                  "https://robbreport.com/wp-content/uploads/2021/12/nevera01.jpeg?w=1000",
            ),
          ],
        ),
      ),
    );
  }
}

class Img extends StatelessWidget {
  final String pic, name;
  const Img({super.key, required this.pic, required this.name});
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(pic),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(pic),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
