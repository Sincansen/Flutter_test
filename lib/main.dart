import "package:flutter/material.dart";
 
void main() => runApp(ScreenWidget());
 
class ScreenWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false, 
     home: Scaffold(
       appBar: AppBar(
        leading: Image.asset("assets/icons/arrow.png"),
        title: const Text(
          "Заголовок", 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
       centerTitle: false,
       backgroundColor: Colors.white,
       ),
       body: SimpleWidget(),
     ),
   );
 }
}

class SimpleWidget extends StatelessWidget {
 @override
 
 Widget build(BuildContext context) {
   return Column(
     children: <Widget> [
      SizedBox(height:35),
      MenuBarTop(),
      SizedBox(height:35),
      MenuBarDown(),
     ],
   );
 }
}

class MenuBarTop extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonMenuBarTop("Продукты", isSelected: true),
        buildButtonMenuBarTop("Фермеры", isSelected: false),
        buildButtonMenuBarTop("Агротуры", isSelected: false),
      ],
    );
  }
}

RawMaterialButton buildButtonMenuBarTop(String text, {bool isSelected = false}) {
  return RawMaterialButton(
    onPressed: () {},
    child: Text(
      text,
      style: TextStyle(
        color: isSelected ? Colors.white: Colors.black,
        fontSize: 18,
      ),
    ),
    shape: StadiumBorder(),
    padding: EdgeInsets.all(10),
    fillColor: isSelected ? Colors.green[400]: Colors.grey[200],
  );
}


class MenuBarDown extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget> [
          buildButtonMenuBarDown("Сортировать", "assets/icons/sort.png"),
          buildButtonMenuBarDown("Овощи и фрукты", "assets/icons/vegetables.png"),
          buildButtonMenuBarDown("Хлеб и выпечка", "assets/icons/bread.png"),
          buildButtonMenuBarDown("Молоко и яйца", "assets/icons/milk.png"),
          buildButtonMenuBarDown("Мясо", "assets/icons/pig.png"),
          buildButtonMenuBarDown("Рыба", "assets/icons/fish.png"),
        ]
      ),
    );
  }
}

RawMaterialButton buildButtonMenuBarDown(String text, String link) {
  return RawMaterialButton(
    onPressed: () {
      print("Button Pressed");
    },
    child: Container (
      margin: EdgeInsets.all(10),
      child: new Column(
        children: <Widget>[
          Container(
            child: new Column(
              children: <Widget>[
                Image.asset(
                  link,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              shape: BoxShape.circle,
            ),
          ),
          Container (
            margin: EdgeInsets.all(5),
            width: 80,
            child: Text(
              text,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ), 
    ),
  );
}