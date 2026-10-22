import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (data['user_answer'] == data['correct_answer'])
                        ? Color.fromARGB(255, 150, 198, 241)
                        : Color.fromARGB(255, 249, 133, 241),
                  ),
                  child: Text(((data['question_index'] as int) + 1).toString()),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 5),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          data['user_answer'] as String,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          data['correct_answer'] as String,
                          style: TextStyle(
                            color: Color.fromARGB(255, 150, 198, 241),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
