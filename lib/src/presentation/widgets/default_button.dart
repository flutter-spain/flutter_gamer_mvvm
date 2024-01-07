import 'package:flutter/material.dart';
import 'package:flutter_gamer_mvvm/src/presentation/utils/base_color.dart';

class DefaultButton extends StatelessWidget {

  String text;
  Function() onPressed;


 DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: BASE_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                
              ),
              child: Stack(
                children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: BACKGROUND_COLOR,
                    ),
                    text
                    ),
                ),
                  Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundColor: BACKGROUND_COLOR,
                      child: Icon(
                          Icons.arrow_forward_ios,
                          color: BASE_COLOR,
                        ),
                    ),
                  ),
                  ]
              ),
              );
  }

}