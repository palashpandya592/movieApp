import 'package:flutter/material.dart';

PreferredSizeWidget customAppbar({
  required String title,
  required Function? onPress,
}) {
  return AppBar(
    title: Text(
      title,
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        onPress;
      },
    ),
  );
}
