import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customText({
  @required BuildContext context,
  @required String text,
  FontWeight fontWeight,
  double size,
  double height,
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: size,
      height: height,
    ),
    overflow: TextOverflow.visible,
    softWrap: true,
  );
}
