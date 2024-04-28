import 'package:flutter/material.dart';

import 'package:photo_gallery/view/main.dart';

import 'package:readmore/readmore.dart';

class InfoScreen extends StatefulWidget {
  final String imgUrl;
  final String carName;
  final String carDetails;
  final String suggestName;
  final String suggestImg;

  const InfoScreen(
      {super.key,
      required this.imgUrl,
      required this.carName,
      required this.carDetails,
      required this.suggestName,
      required this.suggestImg});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
        title: Text(
          widget.carName,
          style: const TextStyle(
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
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.imgUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          widget.carName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 23),
                        ),
                      ),
                    ),
                    Text(
                      widget.carName,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 21),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ReadMoreText(
                      widget.carDetails,
                      trimLines: 3,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "show more",
                      moreStyle: TextStyle(color: Colors.grey.shade400),
                      style: const TextStyle(color: Colors.black),
                      trimExpandedText: "show less",
                      colorClickableText: Colors.grey.shade500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Text(
                        'See more',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Suggestions',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Img(
                          name: widget.suggestName,
                          pic: widget.suggestImg,
                        ),
                        Img(
                          name: widget.carName,
                          pic: widget.imgUrl,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(widget.imgUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                widget.carName,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.carName,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 21),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ReadMoreText(
                                widget.carDetails,
                                trimLines: 3,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: "show more",
                                moreStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                style: const TextStyle(color: Colors.black),
                                trimExpandedText: "show less",
                                colorClickableText: Colors.grey.shade500,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Center(
                                    child: Text(
                                  'See more',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Suggestions',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Img(
                                    name: widget.suggestName,
                                    pic: widget.suggestImg,
                                  ),
                                  Img(
                                    name: widget.carName,
                                    pic: widget.imgUrl,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
