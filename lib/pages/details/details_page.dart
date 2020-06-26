import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_viewer/models/MovieModel.dart';
import 'package:movies_viewer/pages/details/components/body.dart';


class DetailsPage extends StatelessWidget {

  final MovieModel movieModel;

  const DetailsPage({Key key, this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movieModel: movieModel,)
    );
  }
}