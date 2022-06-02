import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_feed/views/Search-Explore_view.dart';
import 'package:personal_feed/views/near%20me%20feed.dart';
import 'package:personal_feed/views/newPost.dart';


import 'package:personal_feed/model/post.dart';
import 'package:personal_feed/model/profile.dart';
import 'package:personal_feed/views/walkthrough.dart';

import 'profile_view.dart';
import '../util/colors.dart';




class a extends StatefulWidget {
  const a({Key? key}) : super(key: key);
  static const String routeName = '/homePage';

  @override
  State<a> createState() => _aState();
}

class _aState extends State<a> {
  int _currentIndex = 0;
  static const _pages = <Widget>[
    FeedPage(),
    ExploreView(),
    NewPostView(),
    NearMeView(),//this is a stateful widget on a separate file
    ProfileView(),//this is a stateful widget on a separate file
    //this is a stateful widget on a separate file

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),

          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.primary,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'New Post',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Near Me',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'My Account',
            ),

          ],

        )

    );
  }
}


class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Gym Buddy",),
        backgroundColor: AppColors.primary,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 3),
              height: 80,

              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width - 50,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        for(var i = 0; i < 7; i++)
                          StoryItem(Profile.namedParams(profilePic: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg", name: "Lider", lastName: "Buyukcanak", posts: []))
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.mail_outline), iconSize: 30,)
                ],
              ),
            ),
            /*IconButton(onPressed: () {}, icon: Icon(
              Icons.mail_outline,
              size: 10
            )),*/
            const Divider(
              height: 5,
              thickness: 2,
              indent: 30,
              endIndent: 30,
              color: AppColors.textformfieldfillColor,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8),
                children: [
                  makeAPost2(
                    Profile.namedParams(profilePic: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg", name: "Lider", lastName: "Buyukcanak", posts: [Post(text: "a",date: "a",likes: 67,comments: 3,postUrl: "https://media.istockphoto.com/photos/side-view-of-beautiful-muscular-woman-running-on-treadmill-picture-id1132086660?k=20&m=1132086660&s=612x612&w=0&h=UTXXsDbUuREHV0UwHThgI144yKyReetDYlIL5C6_JoI="),
                    ]),

                  ),
                  makeAPost2(
                    Profile.namedParams(profilePic: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg", name: "Ege", lastName: "Fitness", posts: [Post(text: "a",date: "a",likes: 123,comments: 12,postUrl: "https://i2.wp.com/usengecsef.com/wp-content/uploads/2017/10/bob-gym-baris-oakn-belovacikli-dilek-yeginsu-usengec-sef.jpeg")]),
                  ),
                  makeAPost2(
                    Profile.namedParams(profilePic: "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg", name: "asd", lastName: "asdfasdf", posts: [Post(text: "a",date: "a",likes: 22,comments: 2,postUrl: "https://media.istockphoto.com/photos/side-view-of-beautiful-muscular-woman-running-on-treadmill-picture-id1132086660?k=20&m=1132086660&s=612x612&w=0&h=UTXXsDbUuREHV0UwHThgI144yKyReetDYlIL5C6_JoI=")], ),

                  ),
                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}



Column StoryItem(Profile profile) {
  return Column(
    mainAxisSize: MainAxisSize.min,
      children:[
        Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: AppColors.primary),
        margin: const EdgeInsets.fromLTRB(9,0,9,0),
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(8),

        child:
        CircleAvatar(
        backgroundImage: NetworkImage(profile.profilePic),
        radius: 18,
        ),


      ),

        Text(profile.name)
      ]
  );


}

Container makeAPost2(Profile profile) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
    padding: const EdgeInsets.fromLTRB(5,10,5,10),
    decoration: BoxDecoration(
      color: Colors.pink.withOpacity(0.1),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(profile.profilePic)),
            const SizedBox(
              width: 5,
            ),
            Text(
              "${profile.name} ${profile.lastName}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height:  300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(profile.posts[0].postUrl),
              )),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.favorite_border,size: 30,
            )),
            IconButton(onPressed: (){}, icon: Image.asset("images/comment2.png", ), iconSize: 30,),
            const SizedBox(
              width: 235,
            ),
            IconButton(onPressed: (){}, icon: Image.asset("images/flag.png", ), iconSize: 30,),

          ],
        ),
        TextButton(
          onPressed: () {  },

          child: Text(
            "${profile.posts[0].likes} likes",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: AppColors.secondary
            ),
          ),
        ),
        TextButton(

          onPressed: () {  },
          child: Text(
            "${profile.posts[0].comments} comments",
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    ),
  );
}
