import 'package:flutter/material.dart';
import 'package:trips/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/people.jpg', 'Varun yasas', '1 Review 5 Photos', 'There is an amazing place in Sri lanka'),
        Review('assets/img/people.jpg', 'Varun yasas', '1 Review 5 Photos', 'There is an amazing place in Sri lanka'),
        Review('assets/img/people.jpg', 'Varun yasas', '1 Review 5 Photos', 'There is an amazing place in Sri lanka'),
      ],
    );

  }
}