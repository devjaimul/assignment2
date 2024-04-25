
import 'package:flutter/material.dart';

class ExtraPage extends StatefulWidget {
  const ExtraPage({super.key});

  @override
  State<ExtraPage> createState() => _ExtraPageState();
}

class _ExtraPageState extends State<ExtraPage> {
  @override
  List <Map> imgLink=[
    { 'name':'McLaren F1',
      "link":"https://robbreport.com/wp-content/uploads/2019/12/6092563g.jpg?w=1000"},
    { "name":"Ferrari Enzo","link":"https://robbreport.com/wp-content/uploads/2022/11/1-w-Enzo-thumbnail_2003-Enzo-Courtesy-RM-Sothebys.jpg?w=1000"},
    {"name":"Ferrari LaFerrari","link":"https://robbreport.com/wp-content/uploads/2019/12/9863701f.jpg?w=1000"},
    {"name":"McLaren P1","link":"https://robbreport.com/wp-content/uploads/2019/12/9370122a.jpg?w=1000"},
    {"name":"Porsche 918 Spyder","link":"https://robbreport.com/wp-content/uploads/2019/12/1561526743.jpg?w=1000"},
    {"name": "SSC Tuatara","link":"https://robbreport.com/wp-content/uploads/2019/12/ssc-tuatara.jpg?w=1000"},
    {"name":"Rimac Nevera","link":"https://robbreport.com/wp-content/uploads/2021/12/nevera01.jpeg?w=1000"}
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView.builder( itemCount:imgLink.length ,itemBuilder: (context, index) {
        return Container(
          height: 160,
          width: 160,
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
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),

        );
      },),
    );
  }
}
