import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gezi Uygulaması',
      home: MyHomePage(),
    );
  }
}

var text =
    'İstanbul Türkiye\'nin en gözde şehri. Şehir bir çok yönetime ev sahipliği yapmıştır. Gezilecek ilk yerlerdendir';

var imagebg =
    'https://i2.cnnturk.com/i/cnnturk/75/1280x720/5ecbcc1279da3e2754c1dd8b.jpg';
var image1 = 'https://www.uskudar.bel.tr/userfiles/images/5.png';
var image3 =
    'https://im.haberturk.com/2020/02/25/ver1582697783/2595195_1200x627.jpg';
var image2 =
    'https://www.gezilesiyer.com/wp-content/uploads/2018/12/topkapi-sarayi-03.jpg';
var image4 =
    'https://img.piri.net/mnresize/840/-/resim/imagecrop/2020/07/10/04/10/resized_26b70-5c66af50ayasofyashutter_16_9_1594209202.jpg';

var pinkColor = Color(0xFFab00ed);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: Image.network(
                imagebg,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "İSTANBUL",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: pinkColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(4.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Dünyanın Merkezi",
                            style: TextStyle(
                              color: pinkColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: pinkColor.withOpacity(0.7),
                  ),
                  Text(
                    "İstanbul",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black87,
                  height: 1.1,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "İstanbul Manzara Resimleri",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ResimSekmesi(),
            SizedBox(
              height: 4.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Ortalama seyahat masrafı",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "2000 TL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      )
                    ],
                  ),
                  RaisedButton(
                    child: Text(
                      "Hemen Başla",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: pinkColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResimSekmesi extends StatelessWidget {
  const ResimSekmesi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 180.0,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: double.infinity,
                  child: Image.network(
                    image1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(image2),
                          ),
                        ),
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(image3),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(image4),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: pinkColor.withOpacity(0.2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
