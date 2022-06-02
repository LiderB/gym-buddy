import 'package:flutter/material.dart';

import '../util/analytics.dart';
import '../util/colors.dart';



class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  void buttonClicked() {
    print('Button Clicked');
  }

  @override
  Widget build(BuildContext context) {
    AppAnalytics.setScreenName("Edit Profile"); print("Edit Profile");
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Profile Edit',
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: false,
        backgroundColor: AppColors.primary,
        elevation: 0.0,

      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                primary: AppColors.buttonColor,
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.all(25)),


            onPressed: () { },
            child: Text('Change Personal Information'),


          ),
          OutlinedButton(

            style: OutlinedButton.styleFrom(
                primary: AppColors.primary,
                backgroundColor: Colors.deepOrange[100],
                padding: const EdgeInsets.all(25)),
            onPressed: () { },
            child: Text('Change Profile Picture'),

          ),
          OutlinedButton(

            style: OutlinedButton.styleFrom(
                primary: AppColors.buttonColor,
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.all(25)),
            onPressed: () { },
            child: Text('Change Password'),

          ),
          OutlinedButton(

            style: OutlinedButton.styleFrom(
                primary: AppColors.primary,
                backgroundColor: Colors.deepOrange[100],
                padding: const EdgeInsets.all(25)),
            onPressed: () { },
            child: Text('Private Account'),

          ),
        ],


      ),
    );
  }
}
