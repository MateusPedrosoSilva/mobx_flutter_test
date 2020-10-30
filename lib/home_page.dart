import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter_test/inc_store.dart';

class HomePage extends StatelessWidget {
  IncStore _incStore = IncStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx Test'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incStore.incNumber();
        },
        child: Icon(Icons.plus_one),
      ),
      body: Center(
        child: Observer(
          builder: (context) {
            return Text(_incStore.number.toString());
          },
        ),
      ),
    );
  }
}
