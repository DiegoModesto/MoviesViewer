class MovieModel {
  final int id;
  final int year;
  final int numOfRatings;
  final int criticsReview;
  final int metascoreRating;

  final double rating;
  final String plot;
  final String title;
  final String poster;
  final String backdrop;

  final List<String> genra;
  final List<Map> cast;

  MovieModel(
      {this.poster,
      this.backdrop,
      this.title,
      this.id,
      this.year,
      this.numOfRatings,
      this.criticsReview,
      this.metascoreRating,
      this.rating,
      this.genra,
      this.plot,
      this.cast});
}

//Mocking data
List<MovieModel> movies = [
  MovieModel(
      id: 1,
      title: "Bloodshot",
      year: 2020,
      poster: "assets/images/poster_1.jpg",
      backdrop: "assets/images/backdrop_1.jpg",
      numOfRatings: 150212,
      rating: 7.3,
      criticsReview: 50,
      metascoreRating: 76,
      genra: ["Action", "Drama"],
      plot: plotText,
      cast: [
        {
          "originalName": "James Mangold",
          "movieName": "Director",
          "image": "assets/images/actor_1.png",
        },
        {
          "originalName": "Matt Damon",
          "movieName": "Carroll",
          "image": "assets/images/actor_2.png",
        },
        {
          "originalName": "Christian Bale",
          "movieName": "Ken Miles",
          "image": "assets/images/actor_3.png",
        },
        {
          "originalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": "assets/images/actor_4.png",
        }
      ]),
  MovieModel(
    id: 2,
    title: "Ford v Ferrari ",
    year: 2019,
    poster: "assets/images/poster_2.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "originalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  MovieModel(
    id: 1,
    title: "Onward",
    year: 2020,
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "originalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
];

String plotText =
    "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";
