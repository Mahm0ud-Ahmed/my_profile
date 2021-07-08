import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_profile/data/repository/repository.dart';
import 'package:my_profile/logic/my_profile_cubit.dart';
import 'package:my_profile/observer.dart';
import 'package:my_profile/screens/home_Screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Repository.getAllDate();
  Bloc.observer = MyBlocObserver();
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyProfileCubit>(
      create: (context) => MyProfileCubit()..getData(),
      child: MaterialApp(
        title: 'My Profile',
        theme: ThemeData(),
        home: HomeScreen(),
      ),
    );
  }
}
