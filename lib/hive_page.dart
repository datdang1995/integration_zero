import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:integration_zero/person_dto.dart';

class HivePage extends StatefulWidget {
  const HivePage({super.key});

  @override
  State<HivePage> createState() => _HivePageState();
}

class _HivePageState extends State<HivePage> {
  bool _loaded = false;

  Future<void> _addPerson() async {
    var box = await Hive.openBox<PersonDto>(personBox);
    final index = box.values.length;
    await box.put(
      'person_with_id_$index',
      PersonDto(userName: 'Dat Dang', userAge: 29),
    );
  }

  @override
  void initState() {
    super.initState();
    Hive.openBox<PersonDto>(personBox).then((_) {
      setState(() {
        _loaded = true;
      });
    });
  }

  @override
  void dispose() {
    Hive.box(personBox).close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !_loaded
          ? const CircularProgressIndicator.adaptive()
          : ValueListenableBuilder<Box<PersonDto>>(
              valueListenable: Hive.box<PersonDto>(personBox).listenable(),
              builder: (context, value, child) {
                final people = value.values;

                return ListView.separated(
                  itemBuilder: (context, index) {
                    final person = people.elementAt(index);

                    return ListTile(
                      title: Text(person.userName),
                      subtitle: Text(person.userAge.toString()),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: people.length,
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPerson,
      ),
    );
  }
}
