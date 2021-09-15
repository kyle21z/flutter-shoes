import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoeapp/card_grid.dart';
import 'package:shoeapp/card_slide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(
            height: 70,
          ),
          ListTile(
            title: Text(
              'Discover',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: (Platform.isIOS || Platform.isMacOS)
                      ? CupertinoTheme.of(context).textTheme.textStyle.color
                      : Theme.of(context).textTheme.subtitle1!.color,
                  fontSize: (Platform.isIOS || Platform.isMacOS)
                      ? CupertinoTheme.of(context)
                          .textTheme
                          .navLargeTitleTextStyle
                          .fontSize
                      : Theme.of(context).textTheme.headline6!.fontSize,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Explore the new collection of sneakers',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: (Platform.isIOS || Platform.isMacOS)
                      ? CupertinoTheme.of(context)
                          .textTheme
                          .tabLabelTextStyle
                          .color
                      : Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .color!
                          .withOpacity(.7)),
              softWrap: true,
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Newest Collection',
                      style: Theme.of(context).textTheme.headline5),
                  Text('See All', style: Theme.of(context).textTheme.subtitle2)
                ],
              )),
          GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(32)),
                      child: Image.asset(
                        'assets/images/cover.png',
                        height: MediaQuery.of(context).size.height * 0.3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 6),
                    ListTile(
                      title: Text('Fragment x Travis Scott'),
                      subtitle: Text('Jordan 1 High OG SP'),
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Most Popular',
                      style: Theme.of(context).textTheme.headline5),
                  Text('See All', style: Theme.of(context).textTheme.subtitle2)
                ],
              )),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    child: Wrap(
                        spacing: 8.0, // gap between adjacent chips
                        runSpacing: 4.0,
                        children: <Widget>[
                      CardSlide(
                          title: 'Lightning (2021)',
                          tag: 'lightning',
                          subtitle: 'Air Jordan 1 OG',
                          imageName: 'jordan4lightningcover.png'),
                      CardSlide(
                          title: 'Electro Orange',
                          tag: 'electroorange',
                          subtitle: 'Air Jordan Retro 4',
                          imageName: 'jordan1orangecover.png'),
                      CardSlide(
                          title: 'White Oreos (2021)',
                          tag: 'whiteoreos',
                          subtitle: 'Air Jordan Retro 4',
                          imageName: 'whiteoreocover.png'),
                      CardSlide(
                          title: 'White Supreme',
                          tag: 'whitesupreme',
                          subtitle: 'Air Force 1 Low',
                          imageName: 'af1supremecover.png'),
                    ])),
              ],
            ),
          ),
          Padding(
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              padding: EdgeInsets.only(top: 25, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Highlights',
                      style: Theme.of(context).textTheme.headline5),
                  Text('See All', style: Theme.of(context).textTheme.subtitle2)
                ],
              )),
          /*Column(children: [
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                CardGrid(
                    title: 'White Supreme',
                    tag: 'whitesupreme',
                    subtitle: 'Air Force 1 Low',
                    imageName: 'af1supremecover.png'),
                CardGrid(
                    title: 'White Supreme',
                    tag: 'whitesupreme',
                    subtitle: 'Air Force 1 Low',
                    imageName: 'af1supremecover.png'),
                CardGrid(
                    title: 'White Supreme',
                    tag: 'whitesupreme',
                    subtitle: 'Air Force 1 Low',
                    imageName: 'af1supremecover.png'),
                CardGrid(
                    title: 'White Supreme',
                    tag: 'whitesupreme',
                    subtitle: 'Air Force 1 Low',
                    imageName: 'af1supremecover.png'),
                CardGrid(
                    title: 'White Supreme',
                    tag: 'whitesupreme',
                    subtitle: 'Air Force 1 Low',
                    imageName: 'af1supremecover.png'),
                CardGrid(
                    title: 'White Supreme',
                    tag: 'whitesupreme',
                    subtitle: 'Air Force 1 Low',
                    imageName: 'af1supremecover.png'),
              ],
            )
          ])*/
        ],
      ),
    );
  }
}
