import 'package:flutter/material.dart';

class ReusableTile extends StatelessWidget {

  final Color colour;
  final String topText;
  final String midTextLarge;
  final String midTextSmall;
  final String secLastText;
  final String lastText;
  final Widget childWidget;

  ReusableTile({required this.colour,
    required this.topText, required this.midTextLarge, required this.midTextSmall,required this.secLastText, required this.lastText,
    required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(topText,
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: childWidget,
                  ),
                ],
              ),

              // TODO Replace midText with RichText
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 10.0),
                      child:
                      RichText(
                        text: TextSpan(
                          text: midTextLarge,
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: midTextSmall, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8.0),
                      child: Text(
                        secLastText,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        lastText,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    padding: const EdgeInsets.only(bottom: 10),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
