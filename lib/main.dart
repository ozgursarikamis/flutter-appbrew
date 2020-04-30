import 'package:flutter/material.dart';

void main() {
  var image = Image(
      image: NetworkImage(
          "https://scontent.fsaw1-1.fna.fbcdn.net/v/t1.0-9/42153708_2175843499406821_6080028512503201792_n.png?_nc_cat=100&_nc_sid=dd9801&_nc_ohc=KXvtTpO3cNsAX8VJFa8&_nc_ht=scontent.fsaw1-1.fna&oh=0ff23f8d039f63f26a353f4e0b93d96b&oe=5ECDB6B0")
  );

  var assetImage = AssetImage("images/diamond.png");

  var appbarTitle = Text("Richy App");
  var appBar = AppBar(title: appbarTitle, backgroundColor: Colors.blueGrey[900]);
    return runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black12,
          appBar: appBar,
        body: Center(child: Image(image: assetImage))),
    debugShowCheckedModeBanner: true,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'I am Rich Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print(_counter);
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
