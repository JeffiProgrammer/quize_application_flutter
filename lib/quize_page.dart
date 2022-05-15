import 'package:flutter/material.dart';

class QuizePage extends StatelessWidget {
  const QuizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          'کوییز ها',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/1.png'),
              height: 200.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'مشهورترین شعبده باز دنیا کیست؟',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            ListTile(
              title: Text(
                'پاسخ اول',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ دوم',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ سوم',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ چهارم',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
