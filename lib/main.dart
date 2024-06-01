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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: EdgeInsets.only(top: 240),
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
            const Row(
              children: [
                Spacer(),
                 Text(
                  "Kouassi Israel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting",
                style: TextStyle(fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
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
            allFriends(size.width / 3.5),
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

Widget sexionTitre(String text) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w600),
    ),
  );
}

Text textRandum(String text) {
  return Text(text);
}

Row forRowTextAndIco(Icon icone, String text) {
  return Row(
    children: [
      icone,
      Padding(
        padding: const EdgeInsets.all(5),
        child: Text(text),
      )
    ],
  );
}

Padding imageAndText(String title, String path, double size) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover, // Pour que l'image couvre tout l'écran
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
        ),
        Text(title),
      ],
    ),
  );
}

Row allFriends(double size) {
  Map<String, String> friends = {
    "kouassi": "images/model_1.jpg",
    "max": "images/model_2.jpg",
    "yoboue": "images/model_3.jpg",
  };

  List<Widget> friendList = friends.entries.map((entry) {
    return imageAndText(entry.key, entry.value, size);
  }).toList();

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: friendList,
  );
}
