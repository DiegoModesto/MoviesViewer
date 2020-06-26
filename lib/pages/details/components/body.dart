import 'package:flutter/material.dart';
import 'package:movies_viewer/models/MovieModel.dart';
import 'package:movies_viewer/models/constants.dart';
import 'package:movies_viewer/pages/details/components/backdrop_rating.dart';
import 'package:movies_viewer/pages/details/components/cast_and_crew.dart';
import 'package:movies_viewer/pages/details/components/genre.dart';
import 'package:movies_viewer/pages/details/components/plot_summart.dart';
import 'package:movies_viewer/pages/details/components/title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  final MovieModel movieModel;

  const Body({Key key, this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRatings(size: size, movieModel: movieModel),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFavBtn(movieModel: movieModel),
          Genre(movieModel: movieModel),
          PlotSummary(movieModel: movieModel),
          CastAndCrew(casts: movieModel.cast),
        ],
      ),
    );
  }
}