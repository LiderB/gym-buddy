import 'package:flutter/material.dart';
import 'package:personal_feed/model/notifications.dart';

class PostCard extends StatelessWidget {

  final Notif post;


  PostCard({required this.post });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              post.text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    post.date,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )
                ),

                const Spacer(),





                const SizedBox(width: 8),



                const SizedBox(width: 8),


              ],
            )
          ],
        ),
      ),
    );
  }
}
