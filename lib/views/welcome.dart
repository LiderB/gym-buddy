import 'package:flutter/material.dart';
import 'package:personal_feed/views/login.dart';
import 'package:personal_feed/views/signUp.dart';
import 'package:personal_feed/util/styles.dart';
import 'package:personal_feed/util/colors.dart';

import '../util/analytics.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Image.network(
                  'https://pbs.twimg.com/profile_images/687300887971270656/_j-bPjAp_400x400.png'),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),

                child: RichText(
                    text: TextSpan(
                      text: "GYM BUDDY",
                      style: welcomeAppNameTextStyle,
                    )
                ),
              ),
            ),

            Spacer(),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 16.0),
                child: Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Login()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 60),
                      child: Text(
                        'Login',
                        style: welcomeLoginandSignupButtonTextStyle,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),

                child: RichText(
                    text: TextSpan(
                      text: "Dont have an account yet?",
                      style: welcomeDontHaveAccountTextStyle,
                    )
                ),
              ),
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 16.0),
                child: Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const MyApp()),
                      );

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 55),
                      child: Text(
                        'Signup',
                        style: welcomeLoginandSignupButtonTextStyle,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

