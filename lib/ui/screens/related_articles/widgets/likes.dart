import 'package:flutter/material.dart';

class Likes extends StatelessWidget {
  const Likes({
    Key key,
    this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.favorite_border_rounded,
            color: color,
          ),
          SizedBox(width: 3),
          Text(
            '155',
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
