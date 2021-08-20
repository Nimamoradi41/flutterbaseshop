
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class SpalshContent extends StatelessWidget {
  const SpalshContent({
    Key? key, required this.Text2,
  }) : super(key: key);

  final String Text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(Text2,style: TextStyle(fontSize:30,color: kPrimaryColor),),
        Text('WellCome To TOKYO Lets Shop'),
        Spacer(
          flex: 2,
        ),
        Container(
          color: Colors.red,
          width: 235,
          height: 265,
        )
      ],
    );
  }
}