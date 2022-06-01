

import 'package:personal_feed/model/post.dart';

class Profile {
  String profilePic;
  String name;
  String lastName;
  int postCount;
  List<Post> posts;
  List<int> location;
  int followers;
  int following;
  String bio;
  Profile({
    required this.profilePic,
    required this.name,
    required this.lastName,
    required this.postCount,
    required this.posts,
    required this.location,
    required this.followers,
    required this.following,
    required this.bio,
  });
  Profile.namedParams({
    this.profilePic = "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg",
    this.name = "Ege",
    this.lastName = "Albayrak",
    this.postCount = 0,
    this.posts = const <Post>[],
    this.location = const [0,0],
    this.followers = 0,
    this.following = 0,
    this.bio = "Dummy bio text"});
}