import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.access_alarm_rounded),
          title: const Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text('Tarefas'),
          )),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 400),
        opacity: opacidade ? 1 : 0,
        child: ListView(
          children: const [
            Task(
                'Aprender Flutter à noite depois do exercício',
                'assets/images/flutter.png',
                3),
            Task(
                'Ler',
                'assets/images/ler.jpg',
                2),
            Task(
                'Meditar',
                'assets/images/meditar.jpeg',
                4),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: opacidade
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.visibility_off),
      ),
    );
  }
}
