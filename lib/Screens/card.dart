import 'dart:io';

import 'package:flutter/material.dart';
import 'package:id_card/Screens/form.dart';
import 'package:id_card/utils/globals.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}


class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: height * 0.08,
              width: width * 5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff53264C),
                    Color(0xff9F4760),
                    Color(0xffDD8580),
                    Color(0xff9F4760),
                    Color(0xff53264C),
                  ],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'User ID',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              height: height*0.6,width: width*0.9-10,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                boxShadow: [
                   BoxShadow(
                     color: Colors.grey,
                     spreadRadius: 3,
                     offset: Offset(4, 0),
                     blurRadius: 10
                   )
                ]
              ),
        child: Column(
          children: [
            Stack(
              children: [Container(
                height: height*0.2-30,
                width: width*0.9,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(250),
                    bottomLeft: Radius.circular(250),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff53264C),
                      Color(0xff9F4760),
                      Color(0xffDD8580),
                      Color(0xff9F4760),
                      Color(0xff53264C),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,left:85),
                child:  CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage:
                  (fileImage != null) ? FileImage(fileImage!) : null,
                  child: Stack(
                children: [
                Center(
                child: (fileImage == null)
                    ? Icon(
                  Icons.person,
                  color: Colors.white,
                  size: width * 0.3,
                )
                    : null,
              ),
              ],
            ),
                ),
              ),
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mayuri purohit',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'CEO',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

        Padding(
                        padding: const EdgeInsets.only(top: 30, left: 50),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ID No \t\t\t\t : \t\t ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '5464',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            Row(
                              children: [
                                Text(
                                  'Gender \t\t:\t\t\t ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Pho. No\t : \t\t',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' 9510620158',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            Row(
                              children: [
                                Text(
                                  'Address :\t\t\t ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Surat , gujarat',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
              ],
            ),

            )
          ],
        ),
      ),
        ]
      ),
    ),
    );
  }
}
