import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_diary/firebase_options.dart';
import './pages/welcome.dart';


Future main() async{
  // helps to ensure the fluuter app is connected 
  WidgetsFlutterBinding.ensureInitialized();
  // initializes app for the current platform the code is running on like android or web
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WelcomePage(),
    );
  }
}
