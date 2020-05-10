import 'package:flutter/material.dart';
import 'package:spotify_yt/appbar.dart';
import 'package:spotify_yt/constants.dart';
import 'package:spotify_yt/cover_item.dart';
import 'package:spotify_yt/navbar.dart';
import 'package:spotify_yt/recent_listened_icon.dart';
import 'package:spotify_yt/section.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SpotifyNavBar(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0, .15, .25],
          colors: [aquagreen, darkgreen, black],
        )),
        child: SafeArea(
          child: ListView(
            children: [
              SpotifyAppBar(),
              Section(
                title: 'Good morning',
                children: [
                  Row(
                    children: [
                      RecentListenedItem(),
                      SizedBox(width: 6),
                      RecentListenedItem(),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      RecentListenedItem(),
                      SizedBox(width: 6),
                      RecentListenedItem(),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      RecentListenedItem(),
                      SizedBox(width: 6),
                      RecentListenedItem(),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Section(
                title: 'Recently played',
                children: [
                  SizedBox(
                    height: 122,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CoverItem(isBig: false, isArtist: true),
                        CoverItem(isBig: false, isArtist: false),
                        CoverItem(isBig: false, isArtist: false),
                        CoverItem(isBig: false, isArtist: false),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Section(
                title: 'Based on your recently listening',
                children: [
                  SizedBox(
                    height: 162,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CoverItem(isBig: true, isArtist: false),
                        CoverItem(isBig: true, isArtist: false),
                        CoverItem(isBig: true, isArtist: false),
                        CoverItem(isBig: true, isArtist: false),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Section(
                title: 'HITS! HITS! HITS!',
                children: [
                  SizedBox(
                    height: 162,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CoverItem(isBig: true, isArtist: false),
                        CoverItem(isBig: true, isArtist: false),
                        CoverItem(isBig: true, isArtist: false),
                        CoverItem(isBig: true, isArtist: false),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
