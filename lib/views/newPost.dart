import 'package:flutter/material.dart';

import '../util/analytics.dart';
import '../util/colors.dart';



class NewPostView extends StatefulWidget {
  const NewPostView({Key? key}) : super(key: key);

  @override
  State<NewPostView> createState() => _NewPostViewState();
}
class _NewPostViewState extends State<NewPostView> {
  @override
  Widget build(BuildContext context) {
    AppAnalytics.setScreenName("New Post"); print("New Post");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Post',
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
                    child: ClipRRect(
                      //borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: AppColors.secondary,
                        width: MediaQuery.of(context).size.width/2,
                        height: MediaQuery.of(context).size.width/2,

                        child: ConstrainedBox(
                            constraints: const BoxConstraints(),
                            child: Container(
                              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJxKGGpPc9-5g25KWwnsCCy9O_dlS4HWo5A&usqp=CAU'
                                  , fit: BoxFit.cover),
                            )),
                      ),
                    ),
                  ),
                ],),
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
                          SizedBox(width: 4),
                          Text('Caption'),
                        ],
                      ),
                    ),
                    fillColor: AppColors.textformfieldfillColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
                Expanded(
                    child: SingleChildScrollView(
                      child: Wrap(
                        // direction: Axis.vertical,
                        // alignment: WrapAlignment.center,
                        spacing:8.0,
                        // runAlignment:WrapAlignment.center,
                        runSpacing: 8.0,
                        // crossAxisAlignment: WrapCrossAlignment.center,
                        // textDirection: TextDirection.rtl,
                        // verticalDirection: VerticalDirection.up,
                        children: <Widget>[
                          Container(
                              color: Colors.blue,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W1",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.red,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W2",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.teal,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W3",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.indigo,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W4",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.blue,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W1",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.red,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W2",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.teal,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W3",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.indigo,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W4",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),
                          Container(
                              color: Colors.orange,
                              width: 100,
                              height: 100,
                              child:Center(child: Text("W5",textScaleFactor: 2.5,))
                          ),

                        ],
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}