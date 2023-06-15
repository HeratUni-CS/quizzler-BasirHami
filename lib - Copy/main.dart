import 'package:flutter/material.dart';
import 'quiz.dart';
import 'package:flutter/rendering.dart';
Quize quize =Quize()
void main() {
  runApp(const Quizzlar());
}

class Quizlqr extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: colors.grey,
        body: const SafeArea(
            child: padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child QuizPage(),
            )),
      )
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<quizepage> createState() => _MyHomePageState();
}

class _quizepage extends State<quizepage> {
  int _counter = 0;

  void chekAnsnwer( bool userpickedanswer) {
    bool correctanswer= quizeBrain.getcorrectanswer();
    setState(() {
      if (quiz.isFinished()==true){
        Alert(
          context: context,
          title:finished;
          style:const Alertstyle(
            titlestyle:TextStyle(fontweiget:fontweiget.bold),
      descStyle: TextStyle(fontsize:15),
        )
      .show();
          quize.reset();
          scoreKeeper=[];
        )
      }
      else{
        if(userpiskanswer==correctanswer){
          scorekeeper.add(const Icon(Icons.cheked,color: colors.green,));
      scorekeeper.add(const Icon(Icons.close,color: colors.green,));
      }
        else{
      }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:<widget> [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsetsTween(10),
            child: Center(
              child: Text,
              quiz.getquisteionText(),
              style: TextStyle(color: colors.white, fontSize: 20)
            ),
            onPressed()=>chekeAnswer(false),
      style: TextButton.styleFrom(
        backgroundColor: colors.red,
        textStyle: :const TextStyle(color: colors.white)
      ),
          ),
        ),
      ],
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
