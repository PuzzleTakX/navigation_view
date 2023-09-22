import 'package:flutter/material.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PuzzleTak NavigationView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colors = [Colors.blue, Colors.red,Colors.amber,Colors.green];
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white.withAlpha(235),
      body:  Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavigationView(onChangePage: (c) {
              setState(() {
                color = colors[c];
              });
            },
              durationAnimation: const Duration(milliseconds: 600),
              color: color,

              items: [
                ItemNavigationView(childAfter: const Icon(Icons.home_rounded,color: Colors.blue,size: 30,), childBefore: Icon(Icons.home_outlined,color: Colors.grey.withAlpha(60),size: 30,)),
                ItemNavigationView(childAfter: const Icon(Icons.widgets_rounded,color: Colors.red,size: 30,), childBefore: Icon(Icons.now_widgets_outlined,color: Colors.grey.withAlpha(60),size: 30,)),
                ItemNavigationView(childAfter: const Icon(Icons.wifi,color: Colors.amber,size: 30,), childBefore: Icon(Icons.wifi_lock,color: Colors.grey.withAlpha(60),size: 30,)),
                ItemNavigationView(childAfter: const Icon(Icons.accessible,color: Colors.green,size: 30,), childBefore: Icon(Icons.not_accessible,color: Colors.grey.withAlpha(60),size: 30,)),
              ],


            ),
            const SizedBox(height: 15,),
            NavigationView(onChangePage: (c) {
            },

              curve: Curves.easeInBack,
              durationAnimation: const Duration(milliseconds: 400),
              items: [

                ItemNavigationView(childAfter: const Icon(Icons.home_rounded,color: Colors.blue,size: 30,), childBefore: Icon(Icons.home_outlined,color: Colors.grey.withAlpha(60),size: 30,)),
                ItemNavigationView(childAfter: const Icon(Icons.widgets_rounded,color: Colors.blue,size: 30,), childBefore: Icon(Icons.now_widgets_outlined,color: Colors.grey.withAlpha(60),size: 30,)),
                ItemNavigationView(childAfter: const Icon(Icons.wifi,color: Colors.blue,size: 30,), childBefore: Icon(Icons.wifi_lock,color: Colors.grey.withAlpha(60),size: 30,)),
                ItemNavigationView(childAfter: const Icon(Icons.accessible,color: Colors.blue,size: 30,), childBefore: Icon(Icons.not_accessible,color: Colors.grey.withAlpha(60),size: 30,)),
              ],


            ),
            const SizedBox(height: 15,),
            NavigationView(onChangePage: (c) {
            },
              color: Colors.pink,
              curve: Curves.easeInQuint,
              durationAnimation: const Duration(milliseconds: 300),
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  colors:  [
                    Colors.white.withAlpha(0),
                    Colors.white.withOpacity(0.2)
                  ],


                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: const [0.0, 1.0],
                  tileMode: TileMode.clamp),
              items: [

                ItemNavigationView(childAfter: const Text("widget",style: TextStyle(color: Colors.pink),), childBefore: Container(width: 60,height: 20,color: Colors.grey.withAlpha(50),)),
                ItemNavigationView(childAfter: const Icon(Icons.widgets_rounded,color: Colors.pink,size: 30,), childBefore: Icon(Icons.now_widgets_outlined,color: Colors.grey.withAlpha(60),size: 30,)),
                ItemNavigationView(childAfter: const Icon(Icons.wifi,color: Colors.blue,size: 30,), childBefore: const Text("widget",style: TextStyle(color: Colors.grey),)),
              ],


            ),
            const SizedBox(height: 15,),
            NavigationView(onChangePage: (c) {
            },
              color: Colors.deepPurpleAccent,
              curve: Curves.easeInCubic,
              durationAnimation: const Duration(milliseconds: 350),
              items: [
                ItemNavigationView(childAfter: const Icon(Icons.wifi,color: Colors.deepPurpleAccent,size: 25,), childBefore: Text("Wifi",style: TextStyle(color: Colors.grey.withAlpha(100)),)),
                ItemNavigationView(childAfter: const Icon(Icons.widgets_rounded,color: Colors.deepPurpleAccent,size: 25,), childBefore: Text("Apps",style: TextStyle(color: Colors.grey.withAlpha(100)),)),
                ItemNavigationView(childAfter: const Icon(Icons.alarm,color: Colors.deepPurpleAccent,size: 25,), childBefore: Text("Alarm",style: TextStyle(color: Colors.grey.withAlpha(100)),)),
                ItemNavigationView(childAfter: const Icon(Icons.account_box,color: Colors.deepPurpleAccent,size: 25,), childBefore: Text("Profile",style: TextStyle(color: Colors.grey.withAlpha(100)),)),
              ],


            ),
          ],
        ),
      ),

    );
  }
}
