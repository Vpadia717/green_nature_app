import 'package:flutter/material.dart';
import 'package:tecttube/src/constants/image_strings.dart';
import 'package:tecttube/src/constants/sizes.dart';
import 'package:tecttube/src/constants/text_strings.dart';

import '../../../../constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(GDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: const AssetImage(GWelcomeScreenImage),
                height: height * 0.6),
            Column(
              children: [
                Text(
                  GWelcomeTitle,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  GWelcomeSubTitle,
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: GPrimaryColor,
                      side: const BorderSide(color: GPrimaryColor),
                      padding:
                          const EdgeInsets.symmetric(vertical: GButtonHeight),
                    ),
                    child: Text(
                      GLogin.toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: GPrimaryColor,
                      foregroundColor: Colors.white,
                      padding:
                          const EdgeInsets.symmetric(vertical: GButtonHeight),
                    ),
                    child: Text(
                      GSignup.toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
