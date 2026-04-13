import 'package:flutter/material.dart';
import 'package:modelhandling/screen/dashboard_screen.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/product_screen.dart';
import 'package:modelhandling/screen/signup_screen.dart';
import 'package:modelhandling/screen/student_list_screen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:modelhandling/screen/student_screen1.dart';
import 'package:modelhandling/screen/user_list_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: 'https://fyzdzfttkuxrsjqnouys.supabase.co', anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ5emR6ZnR0a3V4cnNqcW5vdXlzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzExNjY2MzIsImV4cCI6MjA4Njc0MjYzMn0.lCrlqb5Iu_jkk3CpCteJ3zfEAHDhLFW4tFtwo6cV-rw');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        
      ),
      home: LoginPage(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:modelhandling/screen/student_screen.dart';

// import 'screen/student_screen.dart';

 

// void main() {

//   runApp(const MyApp());

// }

 

// class MyApp extends StatelessWidget {

//   const MyApp({super.key});

 

//   @override

//   Widget build(BuildContext context) {

//     return MaterialApp(

//       title: 'Student Info Manager',

//       debugShowCheckedModeBanner: false,

//       theme: ThemeData(

//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

//         useMaterial3: true,

//       ),

//       home: const StudentScreen(),

//     );

//   }

// }