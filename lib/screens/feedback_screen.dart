import 'package:dinein/metadata/meta_text.dart';
import 'package:dinein/widgets/login_text_field.dart';
import 'package:dinein/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class FeedbackScreen extends StatefulWidget {
  FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Text(
              "Please give your valuable feedback",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20, bottom: 25),
            child: LoginTextField(maxLines: 5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Rating",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, top: 8),
            child: SmoothStarRating(
              allowHalfRating: true,
              onRatingChanged: (val) {
                setState(() {
                  rating = val;
                });
              },
              starCount: 5,
              rating: rating,
              size: 40.0,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half_sharp,
              color: Colors.red.shade400,
              borderColor: Colors.red.shade400,
              spacing: 0.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 22, top: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text(
                  MetaText.skip,
                  style: TextStyle(
                    color: Colors.red.shade400,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Spacer(),
          PrimaryButton(
            label: "PROCEED",
            buttonColor: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
