import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> chips = ['Apple', 'Banana', 'Cherry'];
  bool isSelected = false;
  bool ischeckboxSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hllo')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('data'),

            ChoiceChip(
              labelStyle: TextStyle(fontFamily: 'Urbanist'),
              label: Text('Select chip'),
              selected: isSelected,
              onSelected: (value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),

            OutlinedButton(onPressed: () {}, child: Text('data')),

            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                label: Text('data'),
                hintText: 'hi',
                prefixIcon: Icon(Icons.upload),
                suffixIcon: Icon(Icons.abc),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Checkbox(
              value: isSelected,
              onChanged: (value1) {
                setState(() {
                  isSelected = value1!;
                });
              },
            ),

            Container(height: 300, color: Colors.orange),

            Container(height: 300, color: Colors.red),
            Container(height: 300, color: Colors.green),
            Container(height: 300, color: Colors.blue),
            Container(height: 300, color: Colors.orange),

            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: TColors.linearGradient, // <-- your gradient
                borderRadius: BorderRadius.circular(16), // optional
              ),
            ),
          ],
        ),
      ),
    );
  }
}
