import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(
          child: const Icon(Icons.keyboard_arrow_down_rounded, size: 30),
        ),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {}),
        ],
        title: const Text("Indie Rock Road Trip"),
        titleTextStyle:
            const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                parseColor("#51756d"),
                parseColor("#222323"),
              ],
            ),
          ),
          child: Center(
            child: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Text(
                      "Ylang Ylang",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "KKJ",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white60),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Stack(
                      // alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "00:03",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white60),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  " | ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white30),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "03:43",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: parseColor("#EBBE8B"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: SleekCircularSlider(
                              appearance: CircularSliderAppearance(
                                size: width * 0.65,
                                startAngle: 300,
                                angleRange: 300,
                                customColors: CustomSliderColors(
                                    dotColor: parseColor("#EBBE8B"),
                                    progressBarColor: parseColor("#EBBE8B"),
                                    trackColor: parseColor("#6A8484"),
                                    shadowColor: parseColor("#EBBE8B")),
                                customWidths: CustomSliderWidths(
                                    progressBarWidth: 2,
                                    handlerSize: 5,
                                    shadowWidth: 4,
                                    trackWidth: 2),
                              ),
                              min: 0,
                              max: 1000,
                              initialValue: 900,
                              onChange: (double value) {
                                // callback providing a value while its being changed (with a pan gesture)
                              },
                              onChangeStart: (double startValue) {
                                // callback providing a starting value (when a pan gesture starts)
                              },
                              onChangeEnd: (double endValue) {
                                // ucallback providing an ending value (when a pan gesture ends)
                              },
                              innerWidget: (double value) {
                                return Text("");
                                // use your custom widget inside the slider (gets a slider value from the callback)
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: width * 0.1),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: parseColor("#222323"),
                                  blurRadius: 9.0,
                                  spreadRadius: 0.1,
                                )
                              ],
                            ),
                            child: ClipOval(
                              child: Image.network(
                                "https://seehowitisdone.com/wp-content/uploads/2021/05/fotografia-naturaleza-HD.jpg",
                                width: width * 0.55,
                                height: width * 0.55,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: width * 0.08,
                          left: width * 0.1,
                          right: width * 0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_circle_outline,
                            color: parseColor("#6A8484"),
                            size: width * 0.07,
                          ),
                          Icon(Icons.skip_previous,
                              color: parseColor("#6A8484"), size: width * 0.12),
                          Container(
                            color: Colors.transparent,
                            child: Material(
                                color: Colors.transparent,
                              child: InkWell(
                                onTap: () => {

                                },
                                child: Icon(
                                  Icons.play_circle_filled_rounded,
                                  color: parseColor("#fff"),
                                  size: width * 0.20,
                                ),
                              ),
                            ),
                          ),
                          Icon(Icons.skip_next,
                              color: parseColor("#fff"), size: width * 0.12),
                          Icon(
                            Icons.favorite,
                            color: parseColor("#EBBE8B"),
                            size: width * 0.07,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.shuffle,
                              color: parseColor("#EBBE8B"),
                              size: width * 0.06,
                            ),
                            Icon(Icons.menu,
                                color: parseColor("#6A8484"),
                                size: width * 0.06),
                            Icon(Icons.volume_up,
                                color: parseColor("#fff"), size: width * 0.06),
                            Icon(Icons.repeat,
                                color: parseColor("#fff"), size: width * 0.06),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Color parseColor(String color) {
  String hex = color.replaceAll("#", "");
  if (hex.isEmpty) hex = "ffffff";
  if (hex.length == 3) {
    hex =
        '${hex.substring(0, 1)}${hex.substring(0, 1)}${hex.substring(1, 2)}${hex.substring(1, 2)}${hex.substring(2, 3)}${hex.substring(2, 3)}';
  }
  Color col = Color(int.parse(hex, radix: 16)).withOpacity(1.0);
  return col;
}
