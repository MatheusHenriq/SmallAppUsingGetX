import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxone/app/routes/app_routes.dart';
import 'package:getxone/app/ui/theme/app_theme.dart';
import 'package:splashscreen/splashscreen.dart';


class InitialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('InitialPage'))),

      body: Stack(
        children: [

          SplashScreen(
            seconds : 2,
            gradientBackground : LinearGradient(
              begin : Alignment.topRight,
              end   : Alignment.bottomLeft,
              colors: [
                Colors.green[400], 
                Colors.green[700]
              ],
            ),
            navigateAfterSeconds: Routes.SECOND,
            loaderColor: Colors.red,
          ),

          Container(
            height : 500,
            decoration: BoxDecoration(
              image : DecorationImage(
                image : AssetImage(kDefaultImageUrl),
                fit : BoxFit.contain,
              ),
            ),
          ),

        ],
      
      ),
    );
  }
}