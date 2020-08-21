import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = [
      {
        "name": "Product1",
        "image": "images/shoe1.png",
      },
      {
        "name": "Product1",
      "image": "images/shoe1.png",
      },
      {
        "name": "Product1",
        "image": "images/shoe1.png",
      },
      {
        "name": "Product1",
      "image": "images/shoe1.png",
      },
      {
        "name": "Product1",
        "image": "images/shoe1.png",
      },
      {
        "name": "Product1",
      "image": "images/shoe1.png",
      },
    ];
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          width: 200,
          // color: Colors.amber,
          child: Stack(
            children: [
              ClipPath(
                clipper: FirstClipper(),
                child: Container(color: Colors.green),
              ),
              Transform.rotate(
                angle: 18,
                              child: Container(
                  // color: Colors.black,
                    // transform: Matrix4.rotationX(10),
                    width: 200,
                    // transform: ,
                    // decoration: BoxDecoration(),
                    child: Image.asset(items[index]["image"])),
              ),
            ],
          ),
        );
      },
    );
  }
}

class FirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0, 20);
    path.lineTo(0, size.height - 50);
    //0,size.height-50       50,size.height
    path.quadraticBezierTo(0, size.height, 50, size.height);
    path.lineTo(size.width - 50, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 50);
    path.lineTo(size.width, size.height * 0.5 + 50);
    path.quadraticBezierTo(size.width, size.height * 0.5,
        size.width - (50 * 1.5), (size.height * 0.5) - (50));
    // path.lineTo(50, size.height*0.3+25);
    // path.quadraticBezierTo(25, size.height*0.3, 0,size.height+25);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
