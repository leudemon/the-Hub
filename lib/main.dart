import 'package:flutter/material.dart';
import 'package:self_made_app/pages/home.dart';
import 'package:self_made_app/pages/gallery.dart';
import 'package:flutter/services.dart';

//Future<void>
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black87,
    statusBarIconBrightness: Brightness.dark,
  ));
  //async {
  //WidgetsFlutterBinding.ensureInitialized();
  //final cameras = await availableCameras();
  //final firstCamera = cameras.first;

  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: const DefaultTabController(length: 3, initialIndex: 0, child: Home()),
    debugShowCheckedModeBanner: false,
    routes: {
      // '/camera': (context) => Camera(
      //       camera: firstCamera,
      //     ),
      '/home': (context) => const Home(),
      '/gallery': (context) {
        return const Gallery();
      }
    },
  ));
}
