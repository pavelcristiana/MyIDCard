//@dart=2.9
import 'package:flutter/material.dart';
import 'package:i_am_rich/page/dice_page.dart';
import 'package:i_am_rich/page/music_page.dart';
import 'package:i_am_rich/page/my_id_card.dart';
import 'package:i_am_rich/page/quiz_page.dart';
import 'package:provider/provider.dart';
import 'package:i_am_rich/model/navigation_item.dart';
import 'package:i_am_rich/provider/navigation_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(MyApp());
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Menu';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(primarySwatch: Colors.deepOrange),
          home: MainPage(),
        ),
      );
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.learning_flutter:
        return MyIDCardPage();
      case NavigationItem.dicee:
        return DicePage();
      case NavigationItem.piano:
        return MusicApp();
      case NavigationItem.quiz:
        return QuizPage();
    }
  }
}
