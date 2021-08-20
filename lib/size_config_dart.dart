

import 'package:flutter/material.dart';

class SizeConfig{
      var _mediaQueryData;
 var _ScreenWidth;
  var _ScreenHeight;
 var _orientation;



 SizeConfig(BuildContext context)
   {
     _mediaQueryData=MediaQuery.of(context);
     _ScreenWidth=_mediaQueryData.size.width;
     _ScreenHeight=_mediaQueryData.size.height;
     _orientation=_mediaQueryData.orientation;
   }



   double getproportionateScreenHeight(double inputHeight)
   {
     double screenHeight=_ScreenHeight;
     return (inputHeight/812.0)*screenHeight;
   }



      double getproportionateScreenWidth(double inputWidth)
      {
        double screenWidth=_ScreenWidth;
        return (inputWidth/375.0)*screenWidth;
      }





}