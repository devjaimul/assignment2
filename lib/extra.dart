import 'package:assignment2/page3.dart';
import 'package:flutter/material.dart';

class ExtraPage extends StatefulWidget {
  const ExtraPage({super.key});

  @override
  State<ExtraPage> createState() => _ExtraPageState();
}

class _ExtraPageState extends State<ExtraPage> {

  List<Map> imgLink = [
    {
      'name':"Pininfarina Battista","link":'https://robbreport.com/wp-content/uploads/2021/12/29.jpg?w=1000'
    },
    {
      'name': 'McLaren F1',
      "link":"https://robbreport.com/wp-content/uploads/2019/12/6092563g.jpg?w=1000"
    },
    {
      "name": "Ferrari Enzo",
      "link":
      "https://robbreport.com/wp-content/uploads/2022/11/1-w-Enzo-thumbnail_2003-Enzo-Courtesy-RM-Sothebys.jpg?w=1000"
    },
    {
      "name": "Ferrari LaFerrari",
      "link":
      "https://robbreport.com/wp-content/uploads/2019/12/9863701f.jpg?w=1000"
    },
    {
      "name": "McLaren P1",
      "link":
      "https://robbreport.com/wp-content/uploads/2019/12/9370122a.jpg?w=1000"
    },
    {
      "name": "Porsche 918 Spyder",
      "link":
      "https://robbreport.com/wp-content/uploads/2019/12/1561526743.jpg?w=1000"
    },
    {
      "name": "SSC Tuatara",
      "link":
      "https://robbreport.com/wp-content/uploads/2019/12/ssc-tuatara.jpg?w=1000"
    },
    {
      "name": "Rimac Nevera",
      "link":
      "https://robbreport.com/wp-content/uploads/2021/12/nevera01.jpeg?w=1000"
    },

  ];
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
      
      body: OrientationBuilder(builder: (context, orientation) {
      if(orientation==Orientation.portrait){
        return Expanded(
          child: GridView.builder(
            shrinkWrap: true,

            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.1,
            ),
            itemCount: imgLink.length,

            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {

                   Navigator.push(context, MaterialPageRoute(builder: (context) => const PageThree(),));

                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imgLink[index]['link']),
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
                      imgLink[index]['name'],
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }
      else {
        return Expanded(
          child: GridView.builder(
            shrinkWrap: true,

            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.3,
            ),
            itemCount: imgLink.length,

            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PageThree(),));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imgLink[index]['link']),
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
                      imgLink[index]['name'],
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }
    },),


    );
  }
}
