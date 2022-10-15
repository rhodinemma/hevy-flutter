import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 101',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.extension)),
              ],
            ),
            const SizedBox(height: 37),
            const Text.rich(
              TextSpan(
                  text: 'Welcome,',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' Rhodin',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    )
                  ]),
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, size: 18),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Search'),
            ),
            const SizedBox(height: 50),
            const Text(
              'Saved Places',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 300,
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.491,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (var country in countries)
                    Image.asset('assets/images/$country.png'),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

final countries = ['japan', 'barcelona', 'greece', 'rome'];
