import 'package:flutter/material.dart';

class Personal {
  String name;
  String image;
  String jobTitle;
  String country;
  int age;
  String phone;
  String courses;

  Personal({
    @required this.name,
    @required this.jobTitle,
    @required this.image,
    @required this.country,
    @required this.age,
    @required this.phone,
    @required this.courses,
  });
}
