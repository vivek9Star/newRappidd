import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CustomPageView extends StatefulWidget {
  final List<Widget> children;
  final PageController? controller;
  final Axis scrollDirection;
  final bool reverse;
  final bool pageSnapping;
  final ScrollPhysics? physics;
  final Color color;


  CustomPageView({

    required this.children,
    required this.controller,
    this.scrollDirection = Axis.horizontal,
    this.reverse = false,
    this.pageSnapping = true,
    this.physics,
    required this.color,

  }) ;

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {


  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  void onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: widget.controller,
            onPageChanged: onPageChanged,
            pageSnapping: widget.pageSnapping,
            children: widget.children,
          ),
        ),
        DotsIndicator(
          dotsCount: 3,
          position: _currentPage,
          decorator: DotsDecorator(
            activeColor: widget.color,
            size:  Size.square(6.0),
            activeSize:  Size(35.0, 6.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}



