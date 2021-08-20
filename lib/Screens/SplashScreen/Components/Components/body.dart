
import 'package:flutter/material.dart';
import 'package:flutterbaseshop/Screens/SingIn/SingInScreen.dart';
import 'package:flutterbaseshop/constants.dart';

import 'SplashConttent.dart';


class body extends StatefulWidget {

  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
    int CurrentPage=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child:PageView.builder(
                  onPageChanged: (val)
                    {
                      setState(() {
                        CurrentPage=val;
                      });
                    },
                    itemCount: 3,
                    itemBuilder:(ctx,index)=>
                    SpalshContent(Text2: 'TOKYO',)
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:List.generate(3, (index) => buildContainer(index)),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: FlatButton(onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>SingInScreen(),
                            ),
                          );
                        },
                            color: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child:Text('Continue',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),)),
                      ),
                    ),
                    Spacer()
                  ],
                ),)
          ],
        ),
      ),
    );
  }
   AnimatedContainer buildContainer(int Index) {
     return AnimatedContainer(
       duration: kAnimationDuration,
       margin: EdgeInsets.only(right: 8,top: 8),
       width: CurrentPage   ==Index?20:6,
       height: 6,
       decoration: BoxDecoration(
           color: CurrentPage==Index?kPrimaryColor:Color(0xFFD8D8D8),
           borderRadius: BorderRadius.circular(6)
       ),
     );
   }
}




