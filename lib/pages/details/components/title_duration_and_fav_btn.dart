import 'package:flutter/material.dart';
import 'package:movies_viewer/models/MovieModel.dart';
import 'package:movies_viewer/models/constants.dart';

class TitleDurationAndFavBtn extends StatelessWidget {
  const TitleDurationAndFavBtn({
    Key key,
    @required this.movieModel,
  }) : super(key: key);

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movieModel.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: kDefaultPadding / 2
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '${movieModel.year}',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding,),
                    Text(
                      "PG-13",
                      style: TextStyle(color: kTextLightColor)
                    ),
                    SizedBox(width: kDefaultPadding,),
                    Text(
                      "2",
                      style: TextStyle(color: kTextLightColor)
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              onPressed: () => {},
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
