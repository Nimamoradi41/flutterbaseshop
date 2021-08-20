import 'package:flutter/material.dart';


class BodySingIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text('WellCome Back!',style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Text('Sing in with email and password',style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                decoration:InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'userName',
                  labelStyle: TextStyle(color: Colors.black54),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black),
                    gapPadding: 8,
                  ),
                  contentPadding: EdgeInsets.all(20),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black),
                    gapPadding: 8,
                  ),
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
