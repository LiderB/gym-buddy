import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:personal_feed/model/profile.dart';

class NearCard extends StatelessWidget {
  final Profile profile;
  final VoidCallback delete;

  NearCard({required this.profile, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(33.0),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 1, 0, 1),
                child: ClipOval(
                  //borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width/6,
                    height: MediaQuery.of(context).size.width/6,

                    child: ConstrainedBox(
                        constraints: const BoxConstraints(),
                        child: Container(
                          child: Image.network(profile.profilePic, fit: BoxFit.cover),
                        )),
                  ),
                ),
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
                ],
              ),

              Row(
                  children: [
                    const Text("Distance: ",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        )),
                    Text((pow(pow(profile.location[0], 2)+pow(profile.location[1], 2),1/2).round().toString())+" km",
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        )),
                  ]
              ),

            ],
          ),
        ),
      ),
    );
  }
}