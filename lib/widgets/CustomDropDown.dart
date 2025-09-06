import "package:flutter/material.dart";

class CustomDropDown extends StatelessWidget {

    double width = 200;
    late final List<Object> items;

    CustomDropDown({super.key, required this.width, required this.items});

    @override

    Widget build(BuildContext context){
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        margin: const EdgeInsets.all(10),
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10)
        ),
        child: DropdownButton(
            value: items.first,
            onChanged: (_) {},
            items: items.map((e) 
            {
              return DropdownMenuItem(value: e, child: Text(e.toString()));
            }).toList()
          ),
        );
    }
}
