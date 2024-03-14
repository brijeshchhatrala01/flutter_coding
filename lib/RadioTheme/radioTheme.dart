import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum ThemeRadio {
  ThemeOne,
  ThemeTwo,
}

class RadioThemePage extends StatefulWidget {
  RadioThemePage({super.key});

  @override
  State<RadioThemePage> createState() => _RadioThemePageState();
}

class _RadioThemePageState extends State<RadioThemePage> {
  List themeDataImage = [
    ['images/hot-coffee.png', 'images/coffee-latte.png']
  ];

  Color backgroundColor = Colors.orange.shade100;
  ThemeRadio themeRadio = ThemeRadio.ThemeOne;
  var defaultPic = 'images/hot-coffee.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Radio Theme App"),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              defaultPic,
              fit: BoxFit.cover,
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    defaultPic,
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "Email"),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "Password"),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Theme 1"),
                      Radio(
                        value: ThemeRadio.ThemeOne,
                        groupValue: themeRadio,
                        onChanged: (value) {
                          setState(() {
                            themeRadio = value!;
                            defaultPic = themeDataImage[0][0];
                            backgroundColor = Colors.orangeAccent.shade100;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text("Theme 2"),
                      Radio(
                        value: ThemeRadio.ThemeTwo,
                        groupValue: themeRadio,
                        onChanged: (value) {
                          setState(() {
                            themeRadio = value!;
                            defaultPic = themeDataImage[0][1];
                            print("${themeDataImage[0][1]}");
                            backgroundColor = Colors.orange.shade400;
                          });
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.login),
                    label: const Text(" L O G I N"),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
