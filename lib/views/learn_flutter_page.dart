import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Learn Flutter',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.surface,
              ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/einstein.jpg'),
            ),
            const SizedBox(height: 16),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.blueGrey,
              width: 100, // double.infinity -> expand to the maximum width
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              child: const Center(
                child: Text(
                  'Einstein',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: isSwitched ? Colors.orange : Colors.blue,
              ),
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('TextButton Button'),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('GestureDetector Tapped');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                isSwitched = value;
                setState(() {});
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                isChecked = value ?? false;
                setState(() {});
              },
            ),
            Image.network(
              'https://www.artmajeur.com/medias/hd/e/s/estevelucie/artwork/12330065_albert-einstein.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
