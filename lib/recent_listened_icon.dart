import 'package:flutter/material.dart';
import 'package:spotify_yt/constants.dart';

class RecentListenedItem extends StatelessWidget {
  static const double _height = 50;
  static const double _radius = 6;

  const RecentListenedItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: _height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_radius),
          color: bgIcon,
        ),
        child: Row(
          children: [
            Container(
              width: _height,
              height: _height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_radius),
                  bottomLeft: Radius.circular(_radius),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/album.jpg'),
                ),
              ),
            ),
            SizedBox(width: 10),
            Flexible(
              child: Text(
                'Birds of Prey',
                style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    fontFamily: 'Proxima Nova'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
