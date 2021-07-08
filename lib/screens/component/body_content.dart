import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_profile/data/model/personal.dart';
import 'package:my_profile/logic/my_profile_cubit.dart';
import 'package:my_profile/screens/component/component.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Personal personal = MyProfileCubit.get(context).personal;
    return BlocConsumer<MyProfileCubit, MyProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildInfo(context, 'Country', personal.country),
            SizedBox(
              height: 8,
            ),
            buildInfo(context, 'Age', personal.age.toString()),
            SizedBox(
              height: 8,
            ),
            buildInfo(context, 'Phone', personal.phone),
            SizedBox(
              height: 8,
            ),
            buildInfo(context, 'Courses', personal.courses),
          ],
        );
      },
    );
  }

  Widget buildInfo(BuildContext context, String title, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          color: Colors.teal.shade50, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          customText(
            context: context,
            text: '$title:\t\t ',
            size: 16,
            fontWeight: FontWeight.bold,
          ),
          Expanded(
            child: customText(
              context: context,
              text: MyProfileCubit.get(context).editText(text),
              size: 16,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
