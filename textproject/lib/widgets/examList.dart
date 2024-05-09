import 'package:flutter/material.dart';

class ExamList extends StatelessWidget {
  const ExamList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 835,
      height: 380,
      color: Colors.red,
      child: Column(
        children: [
          Container(
            height: 66,
            color: Colors.green,
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'telc Exam',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      'Special tests',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            height: 314,
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(children: [
                    Expanded(
                      flex: 1,
                      child: Column(children: [
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(children: [
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(children: [
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("telc German a1"),
                        ),
                      ]),
                    )
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
