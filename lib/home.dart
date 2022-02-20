import 'package:flutter/material.dart';
import 'package:task_2_settings/SettingOption.dart';
import 'package:task_2_settings/Logout.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 30, 10),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(280, 30, 10, 10),
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.white,
                    size: 25.0,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 0, 10),
                  child: ClipOval(
                    //to make the picture a circle
                    child: Image(
                      image: AssetImage('assets/user.jpg'),
                      height: 130,
                      width: 130,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 80, 50, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFC00B) ,
                      shape: BoxShape.circle,
                    ),
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.edit,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Nicolas Adams',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'nicolasadams@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 20),
              height: 35,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xffFFC00B),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'Upgrade to pro',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            setting_option('Privacy', Icons.security_rounded),
            setting_option('Purchase History', Icons.history_rounded),
            setting_option('Help & Support', Icons.help_outline_outlined),
            setting_option('Settings', Icons.settings),
            setting_option('Invite a friend', Icons.insert_invitation),
            Logout()
          ],
        ),
      ),
    );
  }
}
