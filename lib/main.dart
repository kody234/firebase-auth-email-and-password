import 'package:firebase_auth_app/ui/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().then(
    (value) => (value) => print("Firebase Initialization Complete"),
  );

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // Future<FirebaseApp> _initializeFirebase() async {
  //   FirebaseApp firebaseApp = await Firebase.initializeApp();
  //   return firebaseApp;
  // }

  // This widget is the root of your application.

  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: () =>  MaterialApp(
        navigatorKey: navigatorKey ,
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
