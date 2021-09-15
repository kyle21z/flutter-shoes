import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoeDetail extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imageName;
  final Object tag;

  ShoeDetail({
    required this.title,
    required this.tag,
    required this.subtitle,
    required this.imageName,
  });

  @override
  _ShoeDetail createState() => _ShoeDetail();
}

class _ShoeDetail extends State<ShoeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: widget.tag,
                child: Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/${widget.imageName}'),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter),
                    ),
                    child: Stack(children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.9),
                                  Colors.black.withOpacity(.0)
                                ]),
                          ),
                        ),
                      ),
                    ])),
              ),
              //SingleChildScrollView(
              //heightFactor: MediaQuery.of(context).size.height - 800,
              //child: Container(
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: ListTile(
                            visualDensity: VisualDensity.comfortable,
                            title: Text(widget.title,
                                style: TextStyle(
                                    color: ThemeData.dark()
                                        .textTheme
                                        .headline5!
                                        .color,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .fontSize)),
                            subtitle: Text('${widget.subtitle} \n150\$',
                                style: TextStyle(
                                    color: ThemeData.dark()
                                        .textTheme
                                        .subtitle2!
                                        .color,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .fontSize)),
                          )),
                      // sizes
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              child: Center(
                                  child: Text(
                                '40',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                '42',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              child: Center(
                                  child: Text(
                                '44',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              child: Center(
                                  child: Text(
                                '46',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                      // end sizes
                      Divider(
                        color: Colors.white54,
                      ),
                      ListTile(
                        subtitle: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            style: TextStyle(
                                color:
                                    ThemeData.dark().textTheme.subtitle2!.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontSize)),
                      ),
                      SizedBox(height: 20),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              'Buy Now',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          )),
                      SizedBox(height: 30),
                    ],
                  )),
              //)
            ],
          ),
        ));
  }
}
