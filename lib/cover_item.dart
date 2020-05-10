import 'package:flutter/material.dart';
import 'package:spotify_yt/constants.dart';

class CoverItem extends StatelessWidget {
  final bool isBig;
  final bool isArtist;

  const CoverItem({
    Key key,
    this.isBig,
    this.isArtist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = isBig ? 140 : 100;
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: size,
      child: Column(
        crossAxisAlignment:
            isArtist ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              borderRadius: isArtist ? BorderRadius.circular(size) : null,
              image: DecorationImage(
                image: AssetImage('assets/images/album.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Birds of Prey',
            style: TextStyle(
              color: white,
              fontFamily: 'Proxima Nova',
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
