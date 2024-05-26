import 'dart:io';

import 'package:flutter/material.dart';
import 'package:id_card/utils/globals.dart';
import 'package:image_picker/image_picker.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}
GlobalKey<FormState> formkey = GlobalKey();
ImagePicker imagePicker = ImagePicker();
File? fileImage;

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
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
                    'Registration Form',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.black12,
                        backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () async {
                                XFile? xFileImage = await imagePicker.pickImage(
                                    source: ImageSource.camera);
                                setState(() {
                                  fileImage = File(xFileImage!.path);
                                });
                              },
                              icon: Icon(
                                Icons.camera_alt_rounded,
                                size: 40,
                                color: Colors.black,
                              )),
                          IconButton(
                              onPressed: () async {
                                XFile? xFileImage = await imagePicker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  fileImage = File(xFileImage!.path);
                                });
                              },
                              icon: Icon(
                                Icons.photo_rounded,
                                size: 40,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 260, top: 10),
                        child: Text(
                          'Name',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Field Must be Filled';
                            }
                          },
                          cursorErrorColor: Colors.red,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: 'Enter your name',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w200,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                  BorderSide(color: Colors.black, width: 1))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200, top: 20),
                        child: Text(
                          'Email address',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Field Must be Filled';
                            }
                          },
                          cursorErrorColor: Colors.red,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: 'Enter your Email',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w200,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                  BorderSide(color: Colors.black, width: 1))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 230, top: 20),
                        child: Text(
                          'Id number',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Field Must be Filled';
                            }
                          },
                          cursorErrorColor: Colors.red,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: 'ID NO.',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w200,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                  BorderSide(color: Colors.black, width: 1))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 230, top: 20),
                        child: Text(
                          'Phone no.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Field Must be Filled';
                            }
                          },
                          cursorErrorColor: Colors.red,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: 'Enter your phone no.',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w200,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                  BorderSide(color: Colors.black, width: 1))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only( top: 10,right: 240,bottom: 10),
                        child: Text(
                          'Gender  : ',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      RadioListTile(
                        value: 'male',
                        activeColor: Color(0xff562B53),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender=value!;
                          });
                        },
                        title: Text('Male',style: TextStyle(
                            fontSize: 17
                        ),),
                      ),
                      RadioListTile(
                        value: 'female',
                        activeColor: Color(0xff562B53),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender=value!;
                          });
                        },
                        title: Text('Female',style: TextStyle(
                            fontSize: 17
                        ),),
                      ),
                      RadioListTile(
                        value: 'others',
                        activeColor: Color(0xff562B53),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender=value!;
                          });
                        },
                        title: Text('Others',style: TextStyle(
                            fontSize: 17
                        ),),
                      ),
                      GestureDetector(
                        onTap: () {
                          bool response = formkey.currentState!.validate();
                          if(response)
                          {
                            name = txtName.text;
                            id = txtId.text;
                            add = txtAdd.text;
                            phone = txtPhone.text;
                            Navigator.of(context).pushNamed('/card');
                          }

                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              bottom: 50,
                              top: 20
                          ),
                          height: 50,
                          width: 250,
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
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text('Generate',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
