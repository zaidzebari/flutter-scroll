import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

main() {
  runApp(MaterialApp(
    home: ScrollCode(),
  ));
}

class ScrollCode extends StatefulWidget {
  @override
  _ScrollCodeState createState() => _ScrollCodeState();
}

class _ScrollCodeState extends State<ScrollCode> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text('zaid'),
                    Container(
                      margin: EdgeInsets.only(bottom: 100),
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 50,
                              width: 100,
                              color: Colors.red,
                              margin: EdgeInsets.only(bottom: 10),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text('zaid'),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        itemCount: 1000,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 100,
                            width: 100,
                            color: Colors.yellow,
                            margin: EdgeInsets.all(10),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
