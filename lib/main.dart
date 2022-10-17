import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
        ],
      ),
      title: 'Responsive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Tampilan'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Profile(Icon(Icons.person), 'Selvina Rinesti', Icon(Icons.call)),
              Profile(Icon(Icons.person), 'Ni Made Pradnyaswari Wijaya',
                  Icon(Icons.call)),
              Profile(Icon(Icons.person), 'I Putu Bagus Surya Wijaya',
                  Icon(Icons.call)),
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 29, 179, 196),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final Icon leading;
  final String title;
  final Icon trailing;
  Profile(this.leading, this.title, this.trailing);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      trailing: trailing,
    );
  }
}
