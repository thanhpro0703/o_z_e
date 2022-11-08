import 'package:flutter/material.dart';

class ContentShop extends StatefulWidget {
  const ContentShop({super.key});

  @override
  State<ContentShop> createState() => _ContentShopState();
}

class _ContentShopState extends State<ContentShop> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background-home.png'),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width / 1,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  color: Colors.red,
                                  child: Text("Icon Doloar"),
                                ),
                                Text("100")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  color: Colors.red,
                                  child: Text("Icon Doloar"),
                                ),
                                Text("100")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  color: Colors.red,
                                  child: Text("Icon Doloar"),
                                ),
                                Text("100")
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.amber),
                        padding: EdgeInsets.only(top: 8, right: 20, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text("106.000d")],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromARGB(255, 133, 219, 84)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          color: Colors.red,
                          child: Text("Icon Doloar"),
                        ),
                        Text("100"),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text("99.000"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width / 1,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  color: Colors.red,
                                  child: Text("Icon Doloar"),
                                ),
                                Text("100")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  color: Colors.red,
                                  child: Text("Icon Doloar"),
                                ),
                                Text("100")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  color: Colors.red,
                                  child: Text("Icon Doloar"),
                                ),
                                Text("100")
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.amber),
                        padding: EdgeInsets.only(top: 8, right: 20, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text("106.000d")],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text("Icon"), Text("100"), Text("106.000d")],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text("Icon"), Text("100"), Text("106.000d")],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text("Back")],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
