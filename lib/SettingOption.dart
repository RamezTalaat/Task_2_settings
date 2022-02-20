import 'package:flutter/material.dart';

class setting_option extends StatelessWidget {
  String name;
  IconData setting_icon; //to pass icon in constructor   //why final ??
  setting_option(this.name, this.setting_icon);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 44),
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xff373737),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                setting_icon,
                color: Color(0xffFFC00B),
              ),
            ),
            Container(
              width: 200, //to keep the arrows constant in there place
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                )),
          ],
        ));
  }
}
