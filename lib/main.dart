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
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  "images/ban.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 240),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 58,
                      backgroundImage: AssetImage("images/ban.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Column(children: [
                Text(
                  "Kouassi Israel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  """Lorem Ipsum is simply dummy text of the printing and typesetting """,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    // ignore: sort_child_properties_last
                    child: const Text(
                      "Modifier le profile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                  ),
                  Container(
                    // ignore: sort_child_properties_last
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            sexionTitre("Sexion Titre"),
            forRowTextAndIco(const Icon(Icons.home), "Riviera M'badon"),
            forRowTextAndIco(const Icon(Icons.work), "Dev web"),
            forRowTextAndIco(const Icon(Icons.favorite), "En couple"),
            sexionTitre("Sexion Titre"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imageAndText("images/model.jpg", "Titre image"),
                imageAndText("images/model.jpg", "Titre image"),
                imageAndText("images/model.jpg", "Titre image")
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 211, 207, 207),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("images/ban.jpg"),
                      ),
                      textRandum("Kouassi israel"),
                      const Spacer(),
                      textRandum("Il y a 5 heures"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Image.asset("images/post_1.jpg"),
                      const Text(
                        """long textfflkdlmkfmfdjmjdfkmjfdkmjfkdmjdfkmjfdklmdjflmjmdfjcddfdfdfzfsfdfs
                      """,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.favorite),
                      textRandum("36 likes"),
                      const Icon(Icons.message),
                      textRandum("12 commentaires")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container sexionTitre(String text) {
  return Container(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

Text textRandum(String text) {
  return Text(text);
}

Row forRowTextAndIco(Icon icone, String text) {
  return Row(
    children: [icone, Text(text)],
  );
}

Padding imageAndText(String img, String title) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Column(
      children: [
        Container(
          height: 200,
          width: 120,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/model.jpg"),
                fit: BoxFit.cover, // Pour que l'image couvre tout l'écran
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        Text(title),
      ],
    ),
  );
}
