//@dart=2.9
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'dart:typed_data';

import 'package:audioplayers/src/audio_cache.dart';
import 'package:i_am_rich/main.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/provider/navigation_provider.dart';
import 'package:i_am_rich/widget/navigation_drawer_widget.dart';

import 'package:audioplayers/audioplayers.dart';

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Piano'),
          backgroundColor: Colors.black87,
        ),
        body: SafeArea(
          child: Center(
              child: MaterialButton(
            onPressed: () {},
            child: Text('Click me!'),
          )),
        ),
      ),
    );
  }
}
