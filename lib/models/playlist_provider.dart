import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of song
  final List<Song> _playlist = [
    // song 1
    Song(
      songName: "Thug Mansion",
      artistName: "Pac",
      albumArtImagePath: "assets/images/image1.png",
      audioPath: "audio/2pac - Thugz Mansion.mp3",
    ),

    // song 2
    Song(
      songName: "Redrum",
      artistName: "21 Savage",
      albumArtImagePath: "assets/images/image2.png",
      audioPath: "audio/21_Savage_Redrum.mp3",
    ),

    // song 3
    Song(
      songName: "Кругом Тонировн",
      artistName: "AK 47",
      albumArtImagePath: "assets/images/image3.png",
      audioPath: "audio/АК-47 - Кругом тонирован.mp3",
    ),
  ];

  // current song playing index
  int? _currentSongIndex;

  /*

  G E T T E R S

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  S E T T E R S

  */

  set currentSongIndex(int? newIndex) {
    // update currernt song index
    _currentSongIndex = newIndex;

    // update UI
    notifyListeners();
  }
}
