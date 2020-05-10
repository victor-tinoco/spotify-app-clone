import 'package:flutter/material.dart';

import 'constants.dart';

class SpotifyNavBar extends StatelessWidget {
  const SpotifyNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: white,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Proxima Nova',
      ),
      unselectedItemColor: unselectedIconLabel,
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Proxima Nova',
      ),
      backgroundColor: bgBottomBar,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/home_selected.png'),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/search_unselected.png'),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/lib_unselected.png'),
          title: Text('Your Library'),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/spotify_unselected.png'),
          title: Text('Premium'),
        ),
      ],
    );
  }
}
