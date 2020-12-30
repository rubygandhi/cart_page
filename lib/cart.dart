import 'package:flutter/material.dart';


class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  List<String> product=['Vegetable Supreme', 'Paneer Tikka Masala', 'Cheesy spicy Pizza', 'Spicy Hot',];
  List<String> price=['£12', '£15', '£10', '£18',];

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        title: Text(
          "Shopping Cart",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              height: 3),


        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: Container(child: Icon(Icons.keyboard_arrow_left)),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right:138.0, top:35),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: product.length,

        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 5/2),
        itemBuilder:(context,index){

           return Stack(
    children: [
    Card(
    color: Colors.white,
    shadowColor: Colors.blue,
    borderOnForeground: false,
    shape: RoundedRectangleBorder(
    side: BorderSide(
    color: Colors.black38,
    width: 3.0,
    style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(20)),
    child: Container(
    height: 110,
    width: 450 ,
    child: Row(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 10.0),
    child: Container(
    width: 170,
    height: 110,
    decoration: BoxDecoration(
    border: Border.all(
    width: 5.0,
    color: Colors.black38,
    style: BorderStyle.solid),
    image: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage(
    "https://image.freepik.com/free-photo/pizza-with-salami-tomatoes-olives-cheese-dough-with-whole-wheat-flour-italian-food_2829-6855.jpg",
    )),
    borderRadius:
    BorderRadius.all(Radius.circular(15.0)),
    color: Colors.orange,
    )),
    ),
    //  SizedBox(width: 10,),
    Padding(
    padding: const EdgeInsets.all(1.0),

    child: Column(
    children: [
    Text(
    (product[index]),
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
    SizedBox(
    height: 10,
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 28,
    width: 100,
    //color: Colors.grey,
    child: Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceEvenly,
    children: [
    Text(
      (price[index]),
    style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold),
    ),
    SizedBox(
    width: 10,
    ),
    Icon(Icons.remove_circle_outline, size: 25),
    Text(
    "",
    style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold),
    ),
    Icon(Icons.add_circle_outline, size: 25),
    ],
    ),
    ),
    )
    ],
    ),
    )
    ],
    ),

    //color: Colors.blue,
    ),

    ),

    ],
    );
    }
      ),
    )
    );
  }
}