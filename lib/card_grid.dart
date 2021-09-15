import 'package:flutter/material.dart';
import 'package:shoeapp/shoedetail.dart';

class CardGrid extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageName;
  final Object tag;

  CardGrid({
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
            child: Column(children: [
              Expanded(
                child: Card(
                    elevation: 8,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      child: Image.asset(
                        'assets/images/$imageName',
                        width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height * 0.3,
                        fit: BoxFit.fitWidth,
                      ),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Text('${title}\n${subtitle}'),
              )
            ])));
  }
}
