import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int result;
  VoidCallback reset;
  Result(this.result, this.reset);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("No more Question ,Your score is :" + result.toString()),
        ElevatedButton(onPressed: reset, child: const Text("Reset !"))
      ],
    );
  }
}
