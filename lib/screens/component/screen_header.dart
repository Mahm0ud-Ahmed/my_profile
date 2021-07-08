import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_profile/data/model/personal.dart';
import 'package:my_profile/logic/my_profile_cubit.dart';
import 'package:my_profile/screens/component/component.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Personal personal = MyProfileCubit.get(context).personal;
    return Container(
      child: BlocConsumer<MyProfileCubit, MyProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              imageProfile(personal.image),
              SizedBox(
                height: 8,
              ),
              customText(
                context: context,
                text: personal.name,
                fontWeight: FontWeight.bold,
                size: 18,
              ),
              customText(
                context: context,
                text: personal.jobTitle,
                fontWeight: FontWeight.normal,
                size: 18,
                height: 1.3,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget imageProfile(String image) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage(image),
      backgroundColor: Colors.transparent,
    );
  }
}
