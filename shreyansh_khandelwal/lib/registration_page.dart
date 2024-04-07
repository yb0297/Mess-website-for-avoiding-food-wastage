import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_wastage/login_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class registration_page extends StatefulWidget {
  @override
  State<registration_page> createState() => registration_page_state();
}

class registration_page_state extends State<registration_page> {
  Color labelTextColor = Colors.black;
  TextEditingController regNo=TextEditingController();
  TextEditingController netId=TextEditingController();
  TextEditingController hostelName=TextEditingController();
  TextEditingController roomNo=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String regNoErrorText="";
  String netIdErrorText="";
  String hostelNameErrorText="";
  String roomNoErrorText="";
  String passwordErrorText="";
  String confirmPasswordErrorText="";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/painted-wooden-plank-textured-backdrop.jpg"),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SRM FOOD",
                        style: GoogleFonts.akronim(
                            fontSize: 70,
                            fontWeight: FontWeight.w500,
                            color: Colors.yellowAccent.shade400),
                      ),
                      TextFormField(
                        controller: regNo,
                        onTapOutside: (PointerDownEvent) {
                          labelTextColor=Colors.black;
                          FocusManager.instance.primaryFocus?.unfocus();setState(() {});
                        },
                        onTap: (){labelTextColor=Colors.yellowAccent;setState(() {});},
                        style: const TextStyle(color: Colors.yellow),

                        decoration:  InputDecoration(
                          prefixIcon: const Icon(
                            Icons.account_circle_outlined,
                            size: 40,
                            color: Colors.black,
                          ),
                          fillColor: Colors.black12,
                          filled: true,
                          labelText: "REG. No.",
                          labelStyle:
                              TextStyle(color: labelTextColor, fontSize: 20),
                          hintText: "REG. No.",
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow)),
                        ),
                        validator: (value){if(value!.isEmpty){return "Enter Reg. No.";}},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onTapOutside: (PointerDownEvent) {
                          labelTextColor=Colors.black;
                          FocusManager.instance.primaryFocus?.unfocus();
                          setState(() {});
                        },
                        onTap: (){labelTextColor=Colors.yellowAccent;setState(() {});},
                        style: const TextStyle(color: Colors.yellow),
                        controller: netId,
                        validator: (value){if(value!.isEmpty){return "Enter Net Id";}},
                        decoration:  InputDecoration(
                          prefixIcon: const Icon(
                            Icons.account_circle_outlined,
                            size: 40,
                            color: Colors.black,
                          ),
                          fillColor: Colors.black12,
                          filled: true,
                          labelText: "Net Id",
                          labelStyle:
                              TextStyle(color: labelTextColor, fontSize: 20),
                          hintText: "Net Id",
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              onTapOutside: (PointerDownEvent) {
                              labelTextColor=Colors.black;
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {});
                            },
                              onTap: (){labelTextColor=Colors.yellowAccent;setState(() {});},
                              style: const TextStyle(color: Colors.yellow),
                              controller: hostelName,
                              validator: (value){if(value!.isEmpty){return "Enter Hostel Name";}},
                              decoration:  InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.home_filled,
                                  size: 40,
                                  color: Colors.black,
                                ),

                                fillColor: Colors.black12,
                                filled: true,
                                labelText: "Hostel Name",
                                labelStyle: TextStyle(
                                    color: labelTextColor, fontSize: 12),
                                hintText: "Hostel Name",
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 2),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.yellow)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              style: const TextStyle(color: Colors.yellow),
                              keyboardType: TextInputType.number,
                              controller: roomNo,
                              validator: (value){if(value!.isEmpty){return "Enter Room No.";}},
                              decoration:  InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.meeting_room,
                                  size: 40,
                                  color: Colors.black,
                                ),
                                fillColor: Colors.black12,
                                filled: true,
                                labelText: "Room N0.",
                                labelStyle: TextStyle(
                                    color: labelTextColor, fontSize: 12),
                                hintText: "Room N0.",
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 2),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.yellow)),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.yellow),
                        onTapOutside: (PointerDownEvent) {
                          labelTextColor=Colors.black;
                          FocusManager.instance.primaryFocus?.unfocus();
                          setState(() {});
                        },
                        onTap: (){labelTextColor=Colors.yellowAccent;setState(() {});},
                        controller: password,
                        validator: (value){if(value!.isEmpty){return "Enter The Password";}},
                        obscureText: true,
                        decoration:  InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            size: 40,
                            color: Colors.black,
                          ),
                          fillColor: Colors.black12,
                          filled: true,
                          labelText: "Password",
                          labelStyle:
                              TextStyle(color: labelTextColor, fontSize: 20),
                          hintText: "Password",
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.yellow),
                        onTapOutside: (PointerDownEvent) {
                          labelTextColor=Colors.black;
                          FocusManager.instance.primaryFocus?.unfocus();
                          setState(() {});
                        },
                        onTap: (){labelTextColor=Colors.yellowAccent;setState(() {});},
                        controller: confirmPassword,
                        obscureText: true,
                        validator: (value){if(value!.isEmpty){return "Enter Confirm Password";}},
                        decoration:  InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            size: 40,
                            color: Colors.black,
                          ),
                          fillColor: Colors.black12,
                          filled: true,
                          labelText: "Confirm Password",
                          labelStyle:
                              TextStyle(color: labelTextColor, fontSize: 20),
                          hintText: "Confirm Password",
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellow)),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            Get.snackbar("SUCCESS", "Registered Successfully",
                              borderRadius: 12,
                              isDismissible: true,
                              margin: const EdgeInsets.all(20),
                              dismissDirection: DismissDirection.startToEnd,
                              colorText: Colors.black,
                              backgroundColor: Colors.yellow.shade700,
                              icon:  const Icon(
                                Icons.check_circle_outline_sharp,
                                color: Colors.green,
                                size: 50,
                              ),
                              animationDuration: const Duration(milliseconds: 500),
                              overlayBlur: 2,
                              forwardAnimationCurve: Curves.easeInOutCubicEmphasized,
                            );
                            Timer(const Duration(milliseconds: 2000), () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login_page()));
                            });
                          }


                        },
                        style: ElevatedButton.styleFrom(
                            maximumSize: const Size(200, 50),
                            backgroundColor: Colors.yellow.shade700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Text(
                            "REGISTER",
                            style: GoogleFonts.akronim(
                                fontSize: 35,
                                color: Colors.black,
                                letterSpacing: 5,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
