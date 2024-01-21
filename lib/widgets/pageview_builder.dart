import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CustomPageViewBuilder extends StatefulWidget {
  final List<Widget> children;
  final PageController? controller;
  final Axis scrollDirection;
  final bool reverse;
  final bool pageSnapping;
  final ScrollPhysics? physics;
  final Color color;
  final int itemCount;

  CustomPageViewBuilder({
    required this.children,
    required this.controller,
    required this.scrollDirection,
    this.reverse = false,
    this.pageSnapping = true,
    this.physics,
    required this.color,
    required this.itemCount,
  });

  @override
  State<CustomPageViewBuilder> createState() => _CustomPageViewBuilderState();
}

class _CustomPageViewBuilderState extends State<CustomPageViewBuilder> {
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
          child: PageView.builder(
            controller: widget.controller ?? _pageController,
            onPageChanged: onPageChanged,
            pageSnapping: widget.pageSnapping,
            itemBuilder: (BuildContext context, int index) {
              return widget.children[index % widget.children.length];
            },
            itemCount: widget.itemCount,
            scrollDirection: widget.scrollDirection,
            reverse: widget.reverse,
            physics: widget.physics,
          ),
        ),
        DotsIndicator(
          dotsCount: 3,
          position: _currentPage.bitLength,
          decorator: DotsDecorator(
            activeColor: widget.color,
            size: Size.square(6.0),
            activeSize: Size(6.0, 6.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
