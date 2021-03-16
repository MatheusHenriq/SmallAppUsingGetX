import 'package:flutter/material.dart';
import 'package:getxone/app/ui/theme/app_theme.dart';

class CircleAvatarWidget extends StatelessWidget {
  
  final String url;
  final double radius;

  CircleAvatarWidget({this.url, this.radius = kRadius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.green,
      radius : radius,
      backgroundImage: AssetImage(url),               
    );
  }
}