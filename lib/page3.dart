import 'package:assignment2/page2.dart';


import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading:IconButton(
            padding: EdgeInsets.zero,
            style: IconButton.styleFrom(
              foregroundColor: Colors.teal,
              backgroundColor: Colors.green.shade300,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
        title: const Text(
          'Pininfarina Battista',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: const [Icon(Icons.more_vert,color: Colors.white,)],

      ),
      body:OrientationBuilder(builder: (context, orientation) {
        if(orientation==Orientation.portrait){
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              runSpacing: 18,
              spacing: 20,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage('https://robbreport.com/wp-content/uploads/2021/12/29.jpg?w=1000'),
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
                  child: const Padding(
                    padding:  EdgeInsets.all(10),
                    child: Text(
                      'Pininfarina Battista',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 23),
                    ),
                  ),
                ),

                const Text(
                  'Pininfarina Battista',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 21),
                ),
                ReadMoreText("Automotive nameplates don’t come more legendary than  Pininfarina. The Italian studio’s 62-year association with Ferrari, for example, created such icons as the 275 GTB, 365 GTB/4 Daytona and that Tom Selleck Magnum P.I. classic."
                  ,
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(color: Colors.grey.shade400),
                  style: const TextStyle(color: Colors.black),
                  trimExpandedText: "show less",
                  colorClickableText: Colors.grey.shade500,),
                TextButton(

                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 10),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        side: const BorderSide(
                            width: 2, color: Colors.green, style: BorderStyle.solid),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                        textStyle: const TextStyle(
                          fontSize: 25,
                        )
                    ),

                    onPressed: () {},
                    child: const Text('See More')),
                const Text(
                  'Suggestions',
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.w300,),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Img( name: "Lotus Evija",pic: "https://robbreport.com/wp-content/uploads/2021/12/26-1.jpg?w=1000",),
                    Img( name: "Ferrari Daytona SP3",pic: "https://robbreport.com/wp-content/uploads/2021/12/2-24.jpg?w=1000",),
                  ],
                )


              ],
            ),
          );
        }
        else {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 20),
              child: Row(
            
                children: [
            
                Expanded(

                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage('https://robbreport.com/wp-content/uploads/2021/12/29.jpg?w=1000'),
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
                    child:  const Padding(
                      padding:  EdgeInsets.all(10),
                      child:  Text(
                        'Pininfarina Battista',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 23),
                      ),
                    ),
            
                  ),
                ),
                  const SizedBox(width: 20,),
                Expanded(
            
                  child: Wrap(
                   runSpacing: 10,
                    spacing: 10,
                 //   direction: Axis.vertical,
                    children: [
                      const Text(
                        'Pininfarina Battista',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 21),
                      ),
                      ReadMoreText("Automotive nameplates don’t come more legendary than  Pininfarina. The Italian studio’s 62-year association with Ferrari, for example, created such icons as the 275 GTB, 365 GTB/4 Daytona and that Tom Selleck Magnum P.I. classic."
                        ,
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "show more",
                        moreStyle: TextStyle(color: Colors.grey.shade400),
                        style: const TextStyle(color: Colors.black),
                        trimExpandedText: "show less",
                        colorClickableText: Colors.grey.shade500,),

                      TextButton(

                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 100,vertical:  7),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                              side: const BorderSide(
                                  width: 2, color: Colors.green, style: BorderStyle.solid),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              textStyle: const TextStyle(
                                fontSize: 15,
                              )
                          ),

                          onPressed: () {},
                          child: const Text('See More')),
                      const Text(
                        'Suggestions',
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.w300,fontSize: 15),
                      ),
                      const SizedBox(
            
                        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Img( name: "Lotus Evija",pic: "https://robbreport.com/wp-content/uploads/2021/12/26-1.jpg?w=1000",),
            
                            Img( name: "Ferrari Daytona SP3",pic: "https://robbreport.com/wp-content/uploads/2021/12/2-24.jpg?w=1000",),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],),
            ),
          );
        }
      },),


    );
  }
}
