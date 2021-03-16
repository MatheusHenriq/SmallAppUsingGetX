import 'package:flutter/material.dart';
import 'package:getxone/app/ui/android/widgets/circleavatar_widget.dart';
import 'package:getxone/app/ui/theme/app_theme.dart';

class AvatarIconWidget extends StatelessWidget {
  final Function onTap; 
  final String url;
  final double radius;
  AvatarIconWidget({this.onTap, this.url = kDefaultImageUrl,this.radius = kRadius});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatarWidget(url : url,radius : radius),
      onTap: onTap,
    );
  }
}