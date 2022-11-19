import 'package:flutter/cupertino.dart';
import 'package:im_animations/im_animations.dart';

class CirclesWithAnimation extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double topPostion;
  final double leftPostion;

  const CirclesWithAnimation({
    super.key,
    required this.color,
    required this.width,
    required this.height,
    required this.topPostion,
    required this.leftPostion,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPostion,
      left: leftPostion,
      child: HeartBeat(
        beatsPerMinute: 10,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 6,
                  offset: const Offset(2, 7),
                  color: color.withOpacity(0.3))
            ],
          ),
        ),
      ),
    );
  }
}
