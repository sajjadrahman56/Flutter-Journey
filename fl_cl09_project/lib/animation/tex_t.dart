import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<Offset>(
      begin: Offset(3, 5), // Start from bottom-right
      end: Offset(0, 0), // Move to top-left
    ).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagonal Text Animation'),
      ),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Text(
            'Flutter Animation s',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
