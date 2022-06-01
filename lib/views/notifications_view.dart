import 'package:flutter/material.dart';
import 'package:personal_feed/model/notifications.dart';
import 'package:personal_feed/ui/notification_card.dart';

import '../util/colors.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List<Notif> posts = [
    Notif(text: 'Eli liked your post', date: 'March 31'),
    Notif(text: 'Adam commented on your post', date: 'March 30'),
    Notif(text: 'How much water did you drink today ?', date: 'March 29'),
    Notif(text: 'Your friend Selena joined Gym Buddy', date: 'March 28'),

  ];
  int postCount = 0;

  void deletePost(Notif post) {
    setState(() {
      posts.remove(post);
    });
  }


  void buttonClicked() {
    setState(() {
      postCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      appBar: AppBar(

        title: const Text(
          'Notifications',
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



      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [








                    const SizedBox(width: 8,),
                  ],
                ),



                Column(
                  children: posts.map((post) => PostCard(
                    post: post,

                  )).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}