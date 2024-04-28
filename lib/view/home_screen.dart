import 'package:flutter/material.dart';

import 'info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> imgLink = [
    {
      "details":"We loved the outrageous 1,817 hp Venom F5 Coupe from maverick Texas supercar builder John Hennessey and his team at Hennessey Special Vehicles. When it debuted back in 2021, the Venom F5 was fast, furious and designed to shatter the elusive 300 mph barrier. While it has yet to hit that particular bullseye, a recorded max of 271.6 mph certainly shows its potential.",
      "name":"Hennessey Venom F5",
      "link":"https://robbreport.com/wp-content/uploads/2021/12/20-2.jpg?w=1000",
    },
    {
      "details":"The mid-mounted 6.5-liter V-12 has been a hulking calling card for Lamborghini’s Murciélago and Aventador flagships, and the Italian brand enters electrification kicking and screaming by retaining the large-displacement mill as the centerpiece of its new hybrid power train. Augmenting the 814 hp petrol burner are three electric motors which elevate the wedge-shaped monster to 1,001 hp, the most output of any plug-in hybrid. Notably, the four-digit figure is achieved without the aid of turbochargers, which can have the buzzkill effect of diminishing the exhaust note.",
      "name":"Lamborghini Revuelto",
      "link":"https://robbreport.com/wp-content/uploads/2022/11/13-w-Revuelto.jpg?w=1000",
    },
    {
      "details":"It’s simply the most powerful series-production road car ever built. It packs an astonishing 2,011 hp and 1,256 ft lbs of torque. That’s enough to catapult this hip-high projectile from zero to 62 mph in less than three seconds and whisk it from zero to 186 mph in just 9.1. Top speed? That’s limited to 217mph.",
      "name":"Lotus Evija",
      "link":"https://robbreport.com/wp-content/uploads/2021/12/26-1.jpg?w=1000",
    },
    {
      "details":"The Icona series of limited-production models tips a hat to the past by wrapping modern underpinnings with retro-futuristic skins. The third Icona to hail from Modena is the Daytona SP3, which recalls the Ferrari 330 P4s which finished first, second, and third at the 24 Hours of Daytona in 1967.",
      "name":"Ferrari Daytona SP3",
      "link":"https://robbreport.com/wp-content/uploads/2021/12/2-24.jpg?w=1000",
    },
    {
      "details":
          "Automotive nameplates don’t come more legendary than Pininfarina. The Italian studio’s 62-year association with Ferrari, for example, created such icons as the 275 GTB, 365 GTB/4 Daytona and that Tom Selleck Magnum P.I. classic, the 308 GTS. The Cadillac Atlante? Not so much.",
      'name': "Pininfarina Battista",
      "link": 'https://robbreport.com/wp-content/uploads/2021/12/29.jpg?w=1000'
    },
    {
      "details":
          "Ok, so the first one on this list is technically from the last century, the 1990s to be exact, but it’s here as a benchmark and baseline for the models that follow. A top speed of 231 mph. Back in 1992, no other production car had ever gone that fast. It was mind-blowing. But that’s what the McLaren F1 did; blow minds. With its feather-weight carbon-fiber chassis, single-minded focus on shaving weight and a bespoke six-liter, 627 hp BMW V-12 for power, it could sear to 60 mph in just 3.2 seconds.",
      'name': 'McLaren F1',
      "link":
          "https://robbreport.com/wp-content/uploads/2019/12/6092563g.jpg?w=1000"
    },
    {
      "details":
          "Ferrari’s biggest sensation of the 21st century remains the Enzo, a V-12-powered, mid-engined projectile named after the legendary founder of the Prancing Horse brand. Designed by Ken Okuyama, who was then head of design at Pininfarina, the car captivated its audience in 2002 at the Paris Motor Show. All 399 units were presold, with production spanning 2003 through 2004. One more example was subsequently built and donated to the Vatican for charity.",
      "name": "Ferrari Enzo",
      "link":
          "https://robbreport.com/wp-content/uploads/2022/11/1-w-Enzo-thumbnail_2003-Enzo-Courtesy-RM-Sothebys.jpg?w=1000"
    },
    {
      "details":
          "2013 was an auspicious year for supercars, with no fewer than three major releases debuting from McLaren, Porsche, and Ferrari and earning the “Holy Trinity” nickname. Though fiercely individual, each of the trio claimed a hybrid power-train layout.",
      "name": "Ferrari LaFerrari",
      "link":
          "https://robbreport.com/wp-content/uploads/2019/12/9863701f.jpg?w=1000"
    },
    {
      "details":
          "Of the three renowned hybrid hypercars that debuted in 2013, two (the Ferrari LaFerrari and Porsche 918 Spyder) hailed from long-established carmakers, while the other—the McLaren P1—was a relative newbie on the scene. Not that the British manufacturer hadn’t earned itself a spot in the hypercar pantheon with the 1990s-era legendary F1, but the lengthy absence made building this flagship like starting from scratch.",
      "name": "McLaren P1",
      "link":
          "https://robbreport.com/wp-content/uploads/2019/12/9370122a.jpg?w=1000"
    },
    {
      "details":
          "The 918 Spyder was a true game changer, demonstrating the potential of plug-in hybrid technology in the supercar stratosphere. A naturally aspirated, 4.6-liter V-8 with 599 hp got added power from two electric motors, for a total output of 877 hp and 944 ft lbs of near instant-on torque.",
      "name": "Porsche 918 Spyder",
      "link":
          "https://robbreport.com/wp-content/uploads/2019/12/1561526743.jpg?w=1000"
    },
    {
      "details":
          "To reach 300 mph. That’s the target that Washington State–based SSC North America has for its new SSC Tuatara hypercar. To hit that mark, the carbon-fiber–bodied Tuatara—named after a spiny lizard found in New Zealand—carries a 5.9-liter twin-turbo V-8 packing a massive 1,726 hp.",
      "name": "SSC Tuatara",
      "link":
          "https://robbreport.com/wp-content/uploads/2019/12/ssc-tuatara.jpg?w=1000"
    },
    {
      "details":
          "Landmark cars often hail from unexpected places, but the Rimac Nevera has dealt earth-shattering blows to the supercar microcosm. For starters, the battery-powered Nevera obliterated internal combustion records by routing 1,914 hp to all four wheels, eclipsing zero-to-60 mph times of everything from McLarens to Koenigseggs. More shockingly, the EV hypercar is the brainchild of 33-year old Croatian wunderkind Mate Rimac, who founded the firm in 2011.",
      "name": "Rimac Nevera",
      "link":
          "https://robbreport.com/wp-content/uploads/2021/12/nevera01.jpeg?w=1000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map> reversedImgLink = imgLink.reversed.toList();

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
             //  Navigator.pop(context);
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
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return GridView.builder(
              itemCount: imgLink.length,
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.2,
              ),
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoScreen(
                            imgUrl: imgLink[index]['link'],
                            carName: imgLink[index]['name'],
                            carDetails: imgLink[index]['details'],
                            suggestName: reversedImgLink[index]['name'],
                            suggestImg: reversedImgLink[index]['link'],
                          ),
                        ));
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
                          offset:
                              const Offset(0, 3), // changes position of shadow
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
            );
          } else {
            return GridView.builder(
              itemCount: imgLink.length,
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.2,
              ),
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoScreen(
                            imgUrl: imgLink[index]['link'],
                            carName: imgLink[index]['name'],
                            carDetails: imgLink[index]['details'],
                            suggestName: reversedImgLink[index]['name'],
                            suggestImg: reversedImgLink[index]['link'],
                          ),
                        ));
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
                          offset:
                              const Offset(0, 3), // changes position of shadow
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
            );
          }
        },
      ),
    );
  }
}
