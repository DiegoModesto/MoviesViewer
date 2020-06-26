import 'package:flutter/material.dart';
import 'package:movies_viewer/components/movie_card.dart';
import 'package:movies_viewer/models/MovieModel.dart';
import 'package:movies_viewer/models/constants.dart';

import 'dart:math' as math;

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(viewportFraction: 0.8, initialPage: initialPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (value) => {
            setState(() {
              initialPage = value;
            })
          },
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (ctx, idx) => buildMovieCardSlider(idx),
        ),
      ),
    );
  }

  Widget buildMovieCardSlider(int idx) => AnimatedBuilder(
        animation: _pageController,
        builder: (BuildContext context, Widget child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = idx - _pageController.page;
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: Duration(microseconds: 350),
            opacity: initialPage == idx ? 1 : 0.4,
            child: Transform.rotate(
              angle: math.pi * value,
              child: MovieCard(movieModel: movies[idx]),
            ),
          );
        },
      );
}
