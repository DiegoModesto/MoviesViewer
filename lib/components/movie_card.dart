import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_viewer/models/MovieModel.dart';
import 'package:movies_viewer/models/constants.dart';
import 'package:movies_viewer/pages/details/details_page.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movieModel;

  const MovieCard({Key key, this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        openElevation: 0,
        closedElevation: 0,
        transitionDuration: Duration(milliseconds: 500),
        closedBuilder: (context, action) => buildMovieCard(context),
        openBuilder: (context, action) => DetailsPage(movieModel: movieModel),
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(movieModel.poster),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(movieModel.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w600)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/star_fill.svg',
                height: 20,
              ),
              SizedBox(width: kDefaultPadding / 2),
              Text(
                "${movieModel.rating}",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ],
      );
  }
}
