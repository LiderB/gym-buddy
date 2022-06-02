import 'package:flutter/material.dart';
import 'package:personal_feed/model/post.dart';
import 'package:personal_feed/ui/efe_post_card.dart';
import 'package:personal_feed/util/analytics.dart';
import 'package:personal_feed/views/edit_profile_view.dart';
import 'package:personal_feed/views/notifications_view.dart';
import 'package:personal_feed/views/welcome.dart';

import '../util/auth.dart';
import '../util/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}
int posts = 0;
class _ProfileViewState extends State<ProfileView> {
  final AuthService _auth = AuthService();
  List<Post> posts = [
    Post.namedParams(text: 'Hello World 1', date: 'March 31', likes: 10, comments: 0),
    Post.namedParams(text: 'Hello World 2', date: 'March 30', likes: 20, comments: 5),
    Post.namedParams(text: 'Hello World 3', date: 'March 29', likes: 30, comments: 10),
    Post.namedParams(text: 'Hello World 4', date: 'March 28', likes: 13, comments: 10),
    Post.namedParams(text: 'Hello World 5', date: 'March 27', likes: 12, comments: 10),
  ];
  int postCount = 0;
  void deletePost(Post post) {
    setState(() {
      posts.remove(post);
    });
  }

  void increamentLike(Post post){
    setState(() {
      post.likes++;
    });
  }
  void buttonClicked() {
    setState(() {
      postCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppAnalytics.setScreenName("Profile"); print("Profile");

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: AppColors.buttonColor,
            ),
            onPressed: () {
              _auth.signOut();
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Welcome()),);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: AppColors.buttonColor,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => NotificationView()) );
              AppAnalytics.setScreenName("Notification");

            },
          )
        ],

        title: const Text(

          'Username',
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
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: ClipOval(
                          child: Image.network(
                            'https://scontent.fist2-4.fna.fbcdn.net/v/t1.6435-9/158915922_1835177049983620_7867840742222695097_n.jpg?stp=cp0_dst-jpg_e15_p640x640_q65&_nc_cat=107&ccb=1-5&_nc_sid=110474&efg=eyJpIjoidCJ9&_nc_ohc=xewcz6_AcSoAX-HqTcf&tn=yL3fhD3XrmMMdYqA&_nc_ht=scontent.fist2-4.fna&oh=00_AT972WOBWpIHv-2oGq6ghOgkcHrFiivzT1Ghtw--wIb8AQ&oe=626A0233',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        radius: 60,
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                          child: Text(
                            '345',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text('Posts',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                          child: Text('800',
                            style: TextStyle(
                              fontSize: 20,
                            ),),
                        ),
                        Text('Followers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                          child: Text('650',
                            style: TextStyle(
                              fontSize: 20,
                            ),),
                        ),
                        Text('Following',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),

                    const SizedBox(width: 8,),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children:  [
                    Text(
                    'username',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                    OutlinedButton(
                        style: TextButton.styleFrom(
                        primary: Colors.red, // foreground
                        ),

                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const EditProfile()),
                          );
                          AppAnalytics.setScreenName("Edit Profile");

                    },
                        child: Text("Edit Profile"),
                        )

              ],
                ),

                const Divider(
                  color: Colors.pink,
                  thickness: 2.0,
                  height: 20,
                ),



                Column(
                  children: posts.map((post) => PostCard(
                    post: post,
                    delete: (){
                      deletePost(post);
                    },
                    increament: (){
                      increamentLike(post);
                    },
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