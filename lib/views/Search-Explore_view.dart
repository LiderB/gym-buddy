import 'package:flutter/material.dart';



import 'package:personal_feed/ui/profile_card.dart';
import 'package:personal_feed/model/profile.dart';

import '../util/colors.dart';

List<Profile> profiles = [
  Profile.namedParams(
    profilePic:
    'https://htmlcolorcodes.com/assets/images/html-color-codes-color-tutorials.jpg',
    name: 'a random profile',
    lastName: "Dogan",
    postCount: 5,
    location: [1,2],
    //posts: posts1,
    followers: 33,
    following: 10,
  ),    Profile.namedParams(
    profilePic:
    'https://miuc.org/wp-content/uploads/2018/02/How-can-colours-help-you-in-your-everyday-life.jpg',
    name: 'AAAAAA',
    lastName: "Buyukcanak",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 1213122,
    following: 31324,
  ),
  Profile.namedParams(
    profilePic:
    'https://media.istockphoto.com/photos/beautiful-sky-with-white-cloud-background-picture-id502046948?b=1&k=20&m=502046948&s=170667a&w=0&h=Lzg5hhu6zcdKwqB7G64MD1_MCV7Yptn02uHtYbKDmg0=',
    name: 'Profilee',
    lastName: "Dogan",
    postCount: 532131,
    location: [1,2],
    //posts: posts2,
    followers: 1222,
    following: 34321,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Hellooo',
    lastName: "Buyukcanak",
    postCount: 51123,
    location: [1,2],
    //posts: posts2,
    followers: 1332,
    following: 341,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Lider',
    lastName: "Buyukcanak",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 1222,
    following: 341,
  ),    Profile.namedParams(
    profilePic:
    'https://miuc.org/wp-content/uploads/2018/02/How-can-colours-help-you-in-your-everyday-life.jpg',
    name: 'Bartu',
    lastName: "Dogan",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 111112,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://media.istockphoto.com/photos/beautiful-sky-with-white-cloud-background-picture-id502046948?b=1&k=20&m=502046948&s=170667a&w=0&h=Lzg5hhu6zcdKwqB7G64MD1_MCV7Yptn02uHtYbKDmg0=',
    name: 'Lider',
    lastName: "Buyukcanak",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 12,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Bartu',
    lastName: "Dogan",
    postCount: 511111,
    location: [1,2],
    //posts: posts2,
    followers: 112,
    following: 341,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Lider',
    lastName: "Buyukcanak",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 1211,
    following: 341,
  ),    Profile.namedParams(
    profilePic:
    'https://miuc.org/wp-content/uploads/2018/02/How-can-colours-help-you-in-your-everyday-life.jpg',
    name: 'Bartu',
    lastName: "Dogan",
    postCount: 511,
    location: [1,2],
    //posts: posts2,
    followers: 11112,
    following: 341,
  ),
  Profile.namedParams(
    profilePic:
    'https://media.istockphoto.com/photos/beautiful-sky-with-white-cloud-background-picture-id502046948?b=1&k=20&m=502046948&s=170667a&w=0&h=Lzg5hhu6zcdKwqB7G64MD1_MCV7Yptn02uHtYbKDmg0=',
    name: 'Lider',
    lastName: "Buyukcanak",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 12,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Lider',
    lastName: "Buyukcanak",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 12,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Bartu',
    lastName: "Dogan",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 12,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://miuc.org/wp-content/uploads/2018/02/How-can-colours-help-you-in-your-everyday-life.jpg',
    name: 'Bartu',
    lastName: "Dogan",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 12,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://media.istockphoto.com/photos/beautiful-sky-with-white-cloud-background-picture-id502046948?b=1&k=20&m=502046948&s=170667a&w=0&h=Lzg5hhu6zcdKwqB7G64MD1_MCV7Yptn02uHtYbKDmg0=',
    name: 'Bartu',
    lastName: "Dogan",
    postCount: 5,
    location: [1,2],
    //posts: posts2,
    followers: 12,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Bartu',
    lastName: "Dogan",
    postCount: 1,
    location: [1,2],
    //posts: posts2,
    followers: 1112,
    following: 34,
  ),
  Profile.namedParams(
    profilePic:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU',
    name: 'Lider',
    lastName: "Buyukcanak",
    postCount: 15,
    location: [1,2],
    //posts: posts2,
    followers: 112,
    following: 34,
  ),
];
class ExploreView extends StatefulWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {

  void deleteProfile(Profile profile) {
    //setState(() {
    //profiles.remove(profile);
    //});
  }
  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search People',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: AppColors.primary,
        elevation: 0.0,
      ),



      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
              padding: EdgeInsets.all(1),
              width: MediaQuery.of(context).size.width/1.1,
              child: TextFormField(
                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  label: Container(
                    width: 110,
                    child: Row(
                      children: const [
                        Icon(Icons.search),
                        SizedBox(width: 4),
                        Text('Search'),
                      ],
                    ),
                  ),
                  fillColor: AppColors.textformfieldfillColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: profiles
                      .map((profile) =>
                      ProfileCard(
                        profile: profile,
                        delete: () {
                          deleteProfile(profile);
                        },
                      ))
                      .toList(),
                ),
              )),
            ],
      ),
    ),)
    ,
    );
  }
}
