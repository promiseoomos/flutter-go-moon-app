import 'package:flutter/material.dart';
import 'package:go_moon/widgets/CustomDropDown.dart';
// import 'package:go_moon/pages/home_page.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override

  Widget build(BuildContext context){

    double deviceWidth = MediaQuery.of(context).size.width;

    const defaultTextStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
      fontWeight: FontWeight.bold
    );

    return MaterialApp(
      title: "Go Moon",
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(21,21,31,0)
      ),
      home: Scaffold(
        body: SafeArea(
          child: DefaultTextStyle.merge(
            style: defaultTextStyle,
            child: Container(
              color: Colors.black54,
              height: 800,
              width: deviceWidth,
              child: Padding(
                padding: EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 60,
                        children: [
                          Center( 
                            child: const Text(
                              "My First Funny App", 
                              style: TextStyle( fontSize: 30, fontWeight: FontWeight.w900, color: Colors.red, backgroundColor: Colors.green)
                            )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: deviceWidth * 0.45,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(200)),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/screenshot.png"),
                                    fit: BoxFit.fill
                                  ),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('1'),
                                    const Text('2'),
                                    const Text('3'),
                                    const Text('4')
                                  ],
                                ),
                              ),
                              const Text("The Five Boys", style : TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis
                              )),
                            ],
                          ),
                          Center(
                            child: customDropDown()
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CustomDropDown(width: 200, items: <String>['One', 'Two', 'Three', 'Four', 'Five']),
                                        CustomDropDown(width: 200, items: <String>['Six', 'Seven', 'Eight', 'Nine', 'Ten']),
                                      ]
                                    )
                                  ],
                                ),
                                
                                
                              ],
                            ) 
                          ),
                          Center(
                            child: sleekButton(context),
                          )
                          
                        ]
                        
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 100,
                          width: deviceWidth,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/screenshot.png"),
                              fit: BoxFit.fill
                            )
                          ),
                        )
                      )
                    ],
                  )
                ) 
              
            ),
          )
        ) 
      )
    );
  }

  Widget customDropDown(){
    
    List<String> bitems = ["Nigeria", "Benin", "South Africa", "Lesotho", "Rwanda", "Zimbabwe"];
    
    List<DropdownMenuItem<String>> aitems = bitems.map((e){
      return DropdownMenuItem(
        value: e,
        child: Text(e)
      );}).toList();

    return Container( 
      width: 500,
      height: 70,
      padding: EdgeInsets.fromLTRB(10, 5 , 10, 5),
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: DropdownButton(
        underline: Container(),
        dropdownColor: Colors.amberAccent,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
        value: bitems.first,
        items: aitems,
        onChanged: (_) {
        }
      )
    );
  }

  Widget sleekButton(BuildContext context){
    return Container(
      width: 255,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text("I am a Button", style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.w800
          ),
        ),
      ),
    );
  }
}
