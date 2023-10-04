import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<int?> _getCount() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('count');
  }

  Future<void> _setCount() async {
    final prefs = await SharedPreferences.getInstance();
    int currentCount = prefs.getInt('count') ?? 0;
    await prefs.setInt('count', ++currentCount);
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<int?>(
          future: _getCount(),
          builder: (context, snapshot) {
            return Text(
              '${snapshot.data}',
              style: Theme.of(context).textTheme.headlineMedium,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setCount,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
