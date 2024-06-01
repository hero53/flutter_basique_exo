import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("images/ban.jpg"),
              const Text(
                "Le Titre",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Text(
                """Lorem Ipsum is simply dummy text of the printing and typesetting """,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      "Le text",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  const Icon(Icons.add),
                ],
              ),
              sexionTitre("Sexion Titre"),
              forRowTextAndIco(const Icon(Icons.add), "le message 1"),
              forRowTextAndIco(const Icon(Icons.add), "le message 2 "),
              forRowTextAndIco(const Icon(Icons.add), "le message 3"),
              sexionTitre("Sexion Titre"),
              Row(
                children: [
                  imageAndText("images/model.jpg", "Titre image"),
                  imageAndText("images/model.jpg", "Titre image"),
                  imageAndText("images/model.jpg", "Titre image")
                ],
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                    textRandum("Randum text"),
                    const Spacer(),
                    textRandum("Randum text")
                  ],
                )
              ]))
            ]),
      ),
    );
  }
}

Text sexionTitre(String text) {
  return Text(text);
}

Text textRandum(String text) {
  return Text(text);
}

Row forRowTextAndIco(Icon icone, String text) {
  return Row(
    children: [icone, Text(text)],
  );
}

Column imageAndText(String img, String title) {
  return Column(
    children: [
      Image.asset(
        img,
        height: 200,
      ),
      Text(title),
    ],
  );
}
