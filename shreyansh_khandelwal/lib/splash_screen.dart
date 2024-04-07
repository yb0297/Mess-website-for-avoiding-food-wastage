

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:food_wastage/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
        Image.asset(
        "assets/images/painted-wooden-plank-textured-backdrop.jpg",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    customPositioned(
                      top: 100.0,
                      left: 100.0,
                      width: 100.0,
                      height: 100.0,
                      radius1: 50.0,
                      duration: 2100,
                      delay: 1,
                      img:
                          "assets/images/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.avif",
                    ),
                    customPositioned(
                      top: 150.0,
                      left: 230.0,
                      width: 120.0,
                      height: 120.0,
                      radius1: 100.0,
                      duration: 1800,
                      delay: 2,
                      img:
                          "assets/images/wok-filled-with-lots-different-types-food-flying-out-it-s-side-into-air-with-wooden-spoon_819901-506.avif",
                    ),
                    customPositioned(
                      top: 200.0,
                      left: -10.0,
                      width: 80.0,
                      height: 80.0,
                      radius1: 100.0,
                      duration: 1500,
                      delay: 1,
                      img:
                          "assets/images/freeze-motion-wok-pan-with-flying-ingredients_9493-17229.avif",
                    ),
                    customPositioned(
                      top: 350.0,
                      left: 20.0,
                      width: 60.0,
                      height: 60.0,
                      radius1: 100.0,
                      duration: 2500,
                      delay: 1,
                      img:
                          "assets/images/asian-noodle-broth-with-meat-meal-food_786587-1365.avif",
                    ),
                    customPositioned(
                      top: 450.0,
                      left: 90.0,
                      width: 80.0,
                      height: 80.0,
                      radius1: 100.0,
                      duration: 3000,
                      delay: 2,
                      img:
                          "assets/images/large-bowl-food-with-fish-vegetables_197463-2405.avif",
                    ),
                    customPositioned(
                      top: 420.0,
                      left: 230.0,
                      width: 90.0,
                      height: 90.0,
                      radius1: 100.0,
                      duration: 1000,
                      delay: 2,
                      img:
                          "assets/images/explosion-fresh-noodles-vegetables-stir-fry-healthy-food-generative-ai_601748-45533.avif",
                    ),
                    customPositioned(
                      top: 310.0,
                      left: 310.0,
                      width: 100.0,
                      height: 100.0,
                      radius1: 100.0,
                      duration: 2000,
                      delay: 1,
                      img:
                          "assets/images/dried-korean-spicy-instant-noodles-with-fried-egg_354831-3200.avif",
                    ),
                    customPositioned(
                      top: 250.0,
                      left: 90.0,
                      width: 160.0,
                      height: 160.0,
                      duration: 1000,
                      delay: 2,
                      radius1: 100.0,
                      img:
                          "assets/images/spaghetti-with-chicken-tomato-sauce-wooden-table-kitchengenerative-ai_841229-2530.avif",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 150),
                child: Animate(
                  effects: const [
                    FadeEffect(
                        curve: Curves.easeInToLinear,
                        duration: Duration(seconds: 1),
                        delay: Duration(milliseconds: 1300)),
                    SlideEffect(
                      duration: Duration(seconds: 1),
                    )
                  ],
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => login_page()));
                    },
                    style: ElevatedButton.styleFrom(
                        maximumSize: const Size(300, 50),
                        backgroundColor: Colors.yellow.shade700,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: Text(
                        "GET STARTED",
                        style: GoogleFonts.akronim(
                            fontSize: 35,
                            color: Colors.black,
                            letterSpacing: 5,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class customPositioned extends StatelessWidget {
  double top;
  double left;
  double width;
  double height;
  double radius1;
  String img;
  int duration;
  int delay;

  customPositioned(
      {Key? key,
      required this.duration,
      required this.delay,
      required this.top,
      required this.left,
      required this.width,
      required this.height,
      required this.radius1,
      required this.img})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      top: top,
      right: left,
      child: Animate(
        effects: [
          ScaleEffect(
              delay: Duration(milliseconds: delay),
              duration: Duration(milliseconds: duration)),
          const FadeEffect()
        ],
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(radius1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(radius1),
                child: AvifImage.asset(img, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
