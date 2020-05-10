import 'package:flutter/material.dart';

class SpotifyAppBar extends StatelessWidget {
  const SpotifyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Image.asset('assets/images/settings.png'),
          onPressed: () {},
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
