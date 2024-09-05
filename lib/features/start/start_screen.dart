import 'package:education/core/pallet.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(

                      // For image
                      image: DecorationImage(
                          image: AssetImage(
                              "images/Jobriver - 3D illustration.jpg"),
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("images/Jobriver - 3D illustration.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      CustomText(
                        text: 'Learning everywhere',
                        font: FontWeight.bold,
                        size: 22,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomText(
                        text: 'Learn with pleasure with ',
                        font: FontWeight.normal,
                        size: 15,
                        color: Colors.grey,
                      ),
                      CustomText(
                          text: 'us,wherever you are!',
                          font: FontWeight.normal,
                          color: Colors.grey,
                          size: 15),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.08,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: SecondryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: SecondryColor.withOpacity(
                                    0.5), // Shadow color with opacity
                                spreadRadius: 5, // Spread radius
                                blurRadius: 7, // Blur radius
                                offset:
                                    Offset(0, 3), // Offset in x and y direction
                              ),
                            ],
                          ),
                          child: CustomText(
                            text: 'Get Started',
                            font: FontWeight.bold,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.font,
    required this.size,
    this.color,
  });
  final String text;
  final FontWeight font;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: font, fontSize: size, color: color),
    );
  }
}
