import 'package:flutter/material.dart';
import 'package:movies_viewer/models/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({Key key, this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(cast['image']),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            cast['originalName'] != null
                ? cast['originalName']
                : 'Name not provided',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            cast['movieName'] != null
                ? cast['movieName']
                : 'Name not provided',
            textAlign: TextAlign.center,
            style: TextStyle(color: kTextLightColor),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}