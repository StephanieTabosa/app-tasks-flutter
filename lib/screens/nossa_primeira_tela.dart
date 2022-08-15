import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.blue,
                width: 75,
                height: 75,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.red,
                width: 75,
                height: 75,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              )
            ],
          ),
          Container(
              width: 300,
              height: 30,
              color: Colors.amber,
              child: Text(
                'Diamante amarelo',
                style: TextStyle(color: Colors.black, fontSize: 28),
                textAlign: TextAlign.center,
              )),
          Container(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                print('Você apertou o botão!');
              },
              child: Text('Aperte este botão'),
            ),
          )
        ],
      ),
    );*/

        Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
