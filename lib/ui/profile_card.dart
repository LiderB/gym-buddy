import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_feed/model/profile.dart';

class ProfileCard extends StatelessWidget {
  final Profile profile;
  final VoidCallback delete;

  ProfileCard({required this.profile, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29.0),
      ),

      child: InkWell(
        onTap: () {
          print("tapped");
        },
      child: Padding(
        padding: const EdgeInsets.all(0),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width/7,
                height: MediaQuery.of(context).size.width/7,
                child: ConstrainedBox(
                    constraints: const BoxConstraints(),
                    child: Container(
                      child: Image.network(profile.profilePic, fit: BoxFit.cover),
                    )),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Row(
                  children: [
                    Text(profile.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                  ]
              ),
              Row(
                children: [
                  const Text("Followers: ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      )),
                  Text(profile.followers.toString(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      )),
                ]
            ),
              Row(
                  children: [
                    const Text("Following: ",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        )),
                    Text(profile.following.toString(),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        )),
                  ]
              ),
            ],),const SizedBox(
              width: 160,
            ),
            // Row(
            //     children: [
            //       const Text("Distance: ",
            //           style: TextStyle(
            //             fontSize: 10,
            //             fontWeight: FontWeight.w300,
            //           )),
            //       const Text("0km",
            //           style: TextStyle(
            //             fontSize: 10,
            //             fontWeight: FontWeight.w300,
            //           )),
            //     ]
            // ),

          ],
        ),
      ),
    ),
    );
  }
}