import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/difficulty.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  int cor = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: taskColor(),
              ),
            ),
            Column(
              children: [
                Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 72,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.grey,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              widget.foto,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                  widget.nome,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      overflow: TextOverflow.ellipsis),
                                )),
                            Difficulty(difficultyLevel: widget.dificuldade),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    nivel++;
                                    if ((nivel / widget.dificuldade) > 10) {
                                      nivel = 0;
                                      cor++;
                                    }
                                  });
                                  //print(nivel);
                                },
                                child: SizedBox(
                                  width: 34,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Column(
                                      children: const [
                                        Icon(Icons.arrow_drop_up),
                                        Text('up')
                                      ],
                                    ),
                                  ),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    nivel--;
                                    if ((nivel / widget.dificuldade) < 0) {
                                      nivel = 0;
                                      cor--;
                                      if (cor < 0) {
                                        cor = 1;
                                      }
                                    }
                                  });
                                  //print(nivel);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Column(
                                    children: const [
                                      Icon(Icons.arrow_drop_down),
                                      Text('down')
                                    ],
                                  ),
                                )),
                          ],
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 200,
                          child: LinearProgressIndicator(
                            color: (nivel / widget.dificuldade < 7)
                                ? Colors.white
                                : Colors.lightGreenAccent,
                            value: (widget.dificuldade > 0)
                                ? (nivel / widget.dificuldade) / 10
                                : 1,
                          )),
                      Text('Nível $nivel',
                          style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  taskColor() {
    switch (cor) {
      case 1:
        return Colors.green;
      case 2:
        return Colors.yellow;
      case 3:
        return Colors.red;
      case 4:
        return Colors.black87;
      default:
        return Colors.green;
    }
  }
}
