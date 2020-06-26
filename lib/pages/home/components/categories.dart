import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movies_viewer/models/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (ctx, idx) => buildCategory(idx, context),
        ));
  }

  Padding buildCategory(int idx, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () => {
          setState(() => {selectedCategory = idx})
        },
        child: Column(
          children: <Widget>[
            Text(
              categories[idx],
              style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w600,
                  color: idx == selectedCategory
                      ? kTextColor
                      : Colors.black.withOpacity(0.4)),
            ),
            Container(
              height: 6,
              width: 40,
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: idx == selectedCategory
                      ? kSecondaryColor
                      : Colors.transparent),
            )
          ],
        ),
      ),
    );
  }
}
