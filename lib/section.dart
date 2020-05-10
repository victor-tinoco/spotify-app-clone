import 'package:flutter/material.dart';
import 'package:spotify_yt/constants.dart';

class Section extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const Section({
    Key key,
    this.title = '',
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Proxima Nova',
              fontWeight: FontWeight.bold,
              color: white,
            ),
          ),
          SizedBox(height: 20),
          Column(children: children)
        ],
      ),
    );
  }
}
