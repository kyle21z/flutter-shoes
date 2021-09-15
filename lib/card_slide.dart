import 'package:flutter/material.dart';
import 'package:shoeapp/shoedetail.dart';

class CardSlide extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageName;
  final Object tag;

  CardSlide({
    required this.title,
    required this.tag,
    required this.subtitle,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ShoeDetail(
                        title: title,
                        tag: tag,
                        subtitle: subtitle,
                        imageName: imageName)));
          },
          child: Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
                height: 220,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/$imageName'),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.topCenter),
                ),
                child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 2, right: 2),
                      child: ListTile(
                        title: Text(title,
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .fontSize!)),
                        subtitle: Text(
                          subtitle,
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .fontSize! /
                                  1.5),
                        ),
                        trailing: Icon(
                          Icons.favorite_outline_rounded,
                          color: Colors.white54,
                        ),
                      ),
                    ))),
          ),
        ));
    // text below
    /*return Container(
      width: 200,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/$imageName')),
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
            ),
            /*ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.asset(
                'assets/images/$imageName',
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
            ),*/
            ListTile(
              title: Text(title),
            )
          ],
        ),
      ),
    )*/
  }
}

/**
 return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            child: Image.asset(
              'assets/images/$imageName',
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 6),
          ListTile(
            title: Text(title),
          )
        ],
      ),
    );
 */
