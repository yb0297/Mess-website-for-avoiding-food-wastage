
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_wastage/main.dart';
import 'package:food_wastage/registration_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatefulWidget {
  @override
  State<login_page> createState() => login_pageState();
}

class login_pageState extends State<login_page> {
  Color labelTextColor = Colors.black;
  Color bglabelColor = Colors.black12;
  String netIdErrorText="";
  String passwordErrorText="";
   TextEditingController netId=TextEditingController();
   TextEditingController password=TextEditingController();
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
        child: Stack(
          children: [
            Positioned(
                top: 20,
                left: 10,
                child: Animate(
                  effects: const [
                    FadeEffect(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeInToLinear,
                        delay: Duration(seconds: 1)),
                    SlideEffect(curve: Curves.easeInOutCubicEmphasized)
                  ],
                  child: Image.asset(
                    "assets/images/Dark_Wood_Texture_Background_Cafe_Menu.png",
                    height: 300,
                    width: 300,
                  ),
                )),
            Center(
              child: SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(30),
                  child: Form(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "SRM FOOD",
                              style: GoogleFonts.akronim(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.yellowAccent.shade400),
                            ),
                          ),
                          TextFormField(
                            onTap: () {
                              labelTextColor = Colors.yellowAccent;
                              bglabelColor=Colors.black.withOpacity(0.6);
                              setState(() {});
                            },controller: netId,
                            onTapOutside: (PointerDownEvent) {
                              labelTextColor = Colors.black;bglabelColor=Colors.black12;

                              setState(() {});
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            onChanged: (netId){netId.isNotEmpty?netIdErrorText="":netIdErrorText=netIdErrorText;},
                            style: const TextStyle(color: Colors.yellow),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.account_circle_outlined,
                                size: 40,
                                color: Colors.black,
                              ),
                              fillColor: bglabelColor,
                              filled: true,
                              labelText: "Net Id",
                              errorText: netIdErrorText.isEmpty?null:netIdErrorText,
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
                            height: 20,
                          ),
                          TextFormField(
                            style: const TextStyle(color: Colors.yellow),controller: password,
                            onTap: () {
                              labelTextColor = Colors.yellowAccent;bglabelColor=bglabelColor=Colors.black.withOpacity(0.6);
                              setState(() {});
                            },
                            onTapOutside: (PointerDownEvent) {
                              labelTextColor = Colors.black;bglabelColor=bglabelColor=Colors.black12;
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {});
                            },
                            onChanged: (password){password.isNotEmpty?passwordErrorText="":passwordErrorText=passwordErrorText;setState(() {});},
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                size: 40,
                                color: Colors.black,
                              ),
                              fillColor: bglabelColor,
                              filled: true,
                              labelText: "Password",
                              errorText: passwordErrorText.isEmpty?null:passwordErrorText,
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
                            height: 40,
                          ),
                          Animate(effects: const [FadeEffect(duration: Duration(milliseconds: 1000),delay: Duration(milliseconds: 1100)),SlideEffect(duration: Duration(milliseconds: 1000))],
                            child: ElevatedButton(
                              onPressed: () {
                                if(netId.text.isEmpty){
                                  netIdErrorText="REQUIRED";
                                  setState(() {});
                                }
                                else if(password.text.isEmpty){
                                  passwordErrorText="REQUIRED";
                                  setState(() {});
                                }
                                else if(!netId.text.isEmpty ){
                                  Get.snackbar("SUCESS","Logged-in Successfully",
                                  borderRadius: 12,
                                  isDismissible: true,
                                  dismissDirection: DismissDirection.startToEnd,
                                  colorText: Colors.black,
                                  backgroundColor: Colors.yellow.shade700,
                                  icon: const Icon(
                                    Icons.check_circle_outline_sharp,
                                    color: Colors.green,
                                    size: 50,
                                  ),
                                  animationDuration: const Duration(milliseconds: 800),
                                  overlayBlur: 2,
                                  forwardAnimationCurve: Curves.easeInOutCubicEmphasized,);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyHomePage()));}
                            
                            
                              },
                              style: ElevatedButton.styleFrom(
                                  maximumSize: const Size(200, 50),
                                  backgroundColor: Colors.yellow.shade700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 7.0),
                                child: Text(
                                  "LOGIN",
                                  style: GoogleFonts.akronim(
                                      fontSize: 35,
                                      color: Colors.black,
                                      letterSpacing: 5,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Animate(effects: const [FadeEffect(duration: Duration(milliseconds: 1000),delay: Duration(milliseconds: 1100))],
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => registration_page()));
                              },
                              style: ElevatedButton.styleFrom(
                                  maximumSize: const Size(200, 50),
                                  backgroundColor: Colors.yellow.shade700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
