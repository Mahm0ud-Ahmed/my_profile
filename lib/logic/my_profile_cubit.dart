import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_profile/data/model/personal.dart';
import 'package:my_profile/data/repository/repository.dart';

part 'my_profile_state.dart';

class MyProfileCubit extends Cubit<MyProfileState> {
  MyProfileCubit() : super(MyProfileInitial());

  static MyProfileCubit get(context) => BlocProvider.of(context);

  Personal personal;

  void getData() {
    emit(MyProfileLoading());
    Repository.getAllDate().forEach((element) {
      personal = Personal(
          name: element.name,
          jobTitle: element.jobTitle,
          image: element.image,
          country: element.country,
          age: element.age,
          phone: element.phone,
          courses: element.courses);
    });
    print(personal.name);
    emit(MyProfileSuccess());
  }

  String editText(String text) {
    return text.replaceAll(',', '\n');
  }
}
