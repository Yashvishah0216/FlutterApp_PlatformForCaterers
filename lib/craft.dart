import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CraftPage()));
}

class CraftPage extends StatefulWidget {
  const CraftPage({super.key});

  @override
  State<CraftPage> createState() => _CraftPageState();
}

class _CraftPageState extends State<CraftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 40),
                    child: Text(
                      'CaterCollab',
                      style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 40),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_sharp,
                          color: Colors.indigoAccent, size: 22),
                      onPressed: () {
                        Navigator.pushNamed(context, 'savourcater');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search, color: Colors.black45),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'search here by name,item,etc..',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  height: 0.5,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {Navigator.pushNamed(context, 'roti');},
                  child: Ink.image(
                    image: AssetImage('assets/roti.png'),
                    height: 150,
                    width: 370,
                    fit: BoxFit.cover,
                    colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken),
                    child: Center(
                        child: Text(
                          'Roti',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {Navigator.pushNamed(context, 'sabji');},
                  child: Ink.image(
                    image: AssetImage('assets/sabji.png'),
                    height: 150,
                    width: 370,
                    fit: BoxFit.cover,
                    colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken),
                    child: Center(
                        child: Text(
                          'Sabji',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {Navigator.pushNamed(context, 'rice');},
                  child: Ink.image(
                    image: AssetImage('assets/rice.png'),
                    height: 150,
                    width: 370,
                    fit: BoxFit.cover,
                    colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken),
                    child: Center(
                        child: Text(
                          'Rice',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {Navigator.pushNamed(context, 'daal');},
                  child: Ink.image(
                    image: AssetImage('assets/daal.png'),
                    height: 150,
                    width: 370,
                    fit: BoxFit.cover,
                    colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken),
                    child: Center(
                        child: Text(
                          'Daal',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
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
