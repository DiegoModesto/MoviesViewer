import 'package:flutter/material.dart';
import 'package:movies_viewer/models/MovieModel.dart';
import 'package:movies_viewer/models/constants.dart';

class PlotSummary extends StatelessWidget {
  final MovieModel movieModel;

  const PlotSummary({Key key, this.movieModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            "Plot Summary",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movieModel.plot,
            style: TextStyle(
              color: Color(0xFF737599),
            ),
          ),
        ),
      ],
    );
  }
}