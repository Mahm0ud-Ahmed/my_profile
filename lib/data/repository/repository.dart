import 'package:my_profile/data/model/personal.dart';

class Repository {
  static Personal onePersonal = Personal(
    name: 'Mahmoud Ahmed Rabie',
    jobTitle: 'Mobile Application',
    country: 'Egypt',
    age: 30,
    phone: '01111205836',
    courses: 'Java, Dart, Android Native, Data Structure',
    image: 'assets/images/my_photo.jpg',
  );

  static List<Personal> getAllDate() {
    List<Personal> personal = [];
    personal.add(onePersonal);
    return personal;
  }
}
