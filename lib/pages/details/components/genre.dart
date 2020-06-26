import 'package:flutter/material.dart';
import 'package:movies_viewer/components/genre_card.dart';
import 'package:movies_viewer/models/MovieModel.dart';
import 'package:movies_viewer/models/constants.dart';

class Genre extends StatelessWidget {
  const Genre({
    Key key,
    @required this.movieModel,
  }) : super(key: key);

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        child: SizedBox(
          height: 36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movieModel.genra.length,
            itemBuilder: (ctx, idx) => GenreCard(
              genre: movieModel.genra[idx],
            ),
          ),
        ));
  }
}
