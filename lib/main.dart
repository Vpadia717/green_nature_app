import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tecttube/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:tecttube/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

//Example code
class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("./applicable"),
        leading: const Icon(Icons.ondemand_video_rounded),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart_rounded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              "Sub-Heading",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Paragraph",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Image(
                image: AssetImage("assets/images/books.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
