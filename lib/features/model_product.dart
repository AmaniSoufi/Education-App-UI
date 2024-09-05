import 'package:education/core/pallet.dart';
import 'package:flutter/material.dart';

class Course {
  String title;
  String subtitle;
  String image;
  Color bgcolor;

  Course({
    required this.bgcolor,
    required this.image,
    required this.subtitle,
    required this.title,
  });
}

final List<Course> Programming = [
  Course(
    title: 'Flutter',
    bgcolor: SecondryColor,
    image: 'images/flutter (1).png',
    subtitle: '15 courses',
  ),
  Course(
    title: 'Python',
    bgcolor: BlueColor,
    // Modified height
    image: 'images/python-language.png',
    subtitle: '16 courses',
  ),
  Course(
    title: 'Java',
    bgcolor: PrimaryColor,
    // Modified height
    image: 'images/java.png',
    subtitle: '12 courses',
  ),
  Course(
    title: 'Dart',
    bgcolor: PrimaryColor,
    // Modified height
    image: 'images/dart.png',
    subtitle: '10 courses',
  ),
  Course(
    title: 'Kotlin',
    bgcolor: SecondryColor,
    // Modified height
    image: 'images/kotlin.png',
    subtitle: '14 courses',
  ),
  Course(
    title: 'Swift',
    bgcolor: BlueColor,
// Modified height
    image: 'images/swift.png',
    subtitle: '11 courses',
  ),
];

final List<Course> Design = [
  Course(
    title: 'Graphic Design',
    bgcolor: BlueColor,
    // Modified height
    image: 'images/graphque-removebg-preview.png',
    subtitle: '15 courses',
  ),
  Course(
    title: 'UI/UX Design',
    bgcolor: SecondryColor,
    image: 'images/ui_ux-removebg-preview.png',
    subtitle: '16 courses',
  ),
  Course(
    title: 'Adobe Photoshop',
    bgcolor: SecondryColor,
    // Modified height
    image: 'images/photoshop-removebg-preview.png',
    subtitle: '12 courses',
  ),
  Course(
    title: 'Illustrator',
    bgcolor: PrimaryColor,
    // Modified height
    image: 'images/ai-removebg-preview.png',
    subtitle: '14 courses',
  ),
];

final List<Course> Marketing = [
  Course(
    title: 'Digital Marketing',
    bgcolor: PrimaryColor,
    // Modified height
    image: 'images/digital-removebg-preview.png',
    subtitle: '15 courses',
  ),
  Course(
    title: 'SEO Optimization',
    bgcolor: BlueColor,
    // Modified height
    image: 'images/seo_optimisation-removebg-preview.png',
    subtitle: '16 courses',
  ),
  Course(
    title: 'Content Strategy',
    bgcolor: SecondryColor,
    // Modified height
    image: 'images/content_stratigy-removebg-preview.png',
    subtitle: '12 courses',
  ),
  Course(
    title: 'Social Media Marketing',
    bgcolor: SecondryColor,
    // Modified height
    image: 'images/social_media_-removebg-preview.png',
    subtitle: '14 courses',
  ),
];
