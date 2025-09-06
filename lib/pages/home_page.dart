import "package:flutter/material.dart";
import "package:go_moon/widgets/CustomDropDown.dart";

class HomePage extends StatelessWidget {

  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override

  Widget build(BuildContext context){

    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: _textWidget()
              ),  
              Expanded(child: _buttonAreaWidget()),
              
            ]
          ) 
        ),

      )
    );
  }

  Widget _buttonAreaWidget(){
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _dropDownButton()
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: _itemButtonWidget()),
              Expanded(child: _itemButtonWidget2())
            ],
          ),
        ),
        Expanded(
          child: _bookRideButton()
        )
      ],
    );
  }

  Widget _textWidget(){
    return const Text(
      "Go Moon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/screenshot.png")
          )
        ),
      );
  }

  Widget _dropDownButton(){
    List<String> items = ["James Webb Station", "International Space Station"];

    return CustomDropDown(width: 300, items: items);
  }

  Widget _itemButtonWidget(){
    List<int> items = [1,2,3,4,5];

    return CustomDropDown(width: 220, items: items);
  }

  Widget _itemButtonWidget2(){
    List<String> items = ["Economy", "Standard", "Business", "Presidential"];

    return CustomDropDown(width: 220, items: items);
  }

  Widget _bookRideButton(){
    return Container(
      width: _deviceWidth,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        height: 10,
        onPressed: (){},
        child: const Text(
          "Book Ride!",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800
          ),
        ),
      ),
    );
  }


}