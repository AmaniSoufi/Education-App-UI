import 'package:education/core/pallet.dart';
import 'package:education/features/home/first_screen.dart';
import 'package:education/features/model_product.dart';
import 'package:education/features/start/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void onCategorySelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<List<Course>> selectedCategory = [Programming, Design, Marketing];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: SecondryColor,
                    size: 30,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  color: SecondryColor,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: 'Hi Amani', font: FontWeight.bold, size: 28),
                    CustomText(
                        text: 'Today is a good day ',
                        font: FontWeight.normal,
                        color: Colors.grey,
                        size: 15),
                    CustomText(
                        text: 'to learn semthing new',
                        font: FontWeight.normal,
                        color: Colors.grey,
                        size: 15),
                  ],
                ),
                Spacer(),
                Container(
                  height: height * 0.12,
                  width: width * 0.25,
                  decoration: BoxDecoration(
                    color: SecondryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: SecondryColor.withOpacity(
                            0.5), // Shadow color with opacity
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y direction
                      ),
                    ],
                  ),
                  child: Image.asset('images/20.png'),
                )
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              children: [
                CustomButton(
                  selectedIndex: selectedIndex,
                  index: 0,
                  height: height,
                  text: 'Programming',
                  onpressed: onCategorySelected,
                ),
                Spacer(),
                CustomButton(
                  selectedIndex: selectedIndex,
                  index: 1,
                  height: height,
                  text: 'Design',
                  onpressed: onCategorySelected,
                ),
                Spacer(),
                CustomButton(
                  selectedIndex: selectedIndex,
                  index: 2,
                  height: height,
                  text: 'Marketing',
                  onpressed: onCategorySelected,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: MasonryGridView.builder(
                crossAxisSpacing: 5,
                itemCount: selectedCategory[selectedIndex].length,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final course = selectedCategory[selectedIndex][index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width * 0.45,
                      height: height * 0.3,
                      decoration: BoxDecoration(
                          color: course.bgcolor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: course.bgcolor.withOpacity(
                                  0.5), // Shadow color with opacity
                              spreadRadius: 7, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset:
                                  Offset(0, 5), // Offset in x and y direction
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CustomText(
                              text: course.title,
                              font: FontWeight.bold,
                              size: 20,
                              color: Colors.white,
                            ),
                            CustomText(
                              text: course.subtitle,
                              font: FontWeight.normal,
                              size: 15,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Center(
                              child: Container(
                                  height: height * 0.12,
                                  child: Image.asset(course.image)),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.height,
    required this.text,
    required this.onpressed,
    required this.index,
    required this.selectedIndex,
  });

  final double height;
  final String text;
  final int index;
  final int selectedIndex;

  final ValueChanged<int> onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onpressed(index),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        alignment: Alignment.center,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: index == selectedIndex ? SecondryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color:
                  SecondryColor.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(0, 3), // Offset in x and y direction
            ),
          ],
        ),
        child: CustomText(
          text: text,
          font: FontWeight.normal,
          size: 15,
          color: index == selectedIndex ? Colors.white : SecondryColor,
        ),
      ),
    );
  }
}
