///
///  create by zmtzawqlp on 2019/5/27
///

import 'package:flutter/material.dart';
import 'package:share_ui/src/firework_button/utils/firework_button_typedef.dart';

import 'painter/bubbles_painter.dart';
import 'painter/circle_painter.dart';
import 'utils/firework_button_model.dart';

typedef FireworkListener = void Function();

class FireworkController {
  FireworkListener listener;

  void fire() {
    if (listener != null) {
      listener();
    }
  }

  void removeListener() {
    listener = null;
  }
}

class FireworkButton extends StatefulWidget {
  const FireworkButton(
      {Key key,
      this.size = 30.0,
      this.fireworkController,
      this.fireworkBuilder,
      double bubblesSize,
      double circleSize,
      this.mainAxisAlignment = MainAxisAlignment.center,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.animationDuration = const Duration(milliseconds: 1000),
      this.bubblesColor = const BubblesColor(
        dotPrimaryColor: Color(0xFFFFC107),
        dotSecondaryColor: Color(0xFFFF9800),
        dotThirdColor: Color(0xFFFF5722),
        dotLastColor: Color(0xFFF44336),
      ),
      this.circleColor =
          const CircleColor(start: Color(0xFFFF5722), end: Color(0xFFFFC107)),
      this.onTap,
      this.padding})
      : assert(size != null),
        assert(animationDuration != null),
        assert(circleColor != null),
        assert(bubblesColor != null),
        //assert(isLiked != null),
        assert(mainAxisAlignment != null),
        assert(crossAxisAlignment != null),
        bubblesSize = bubblesSize ?? size * 2.0,
        circleSize = circleSize ?? size * 0.8,
        super(key: key);

  ///control firing event from outside
  final FireworkController fireworkController;

  ///size of like widget
  final double size;

  ///animation duration to change isLiked state
  final Duration animationDuration;

  ///total size of bubbles
  final double bubblesSize;

  ///colors of bubbles
  final BubblesColor bubblesColor;

  ///size of circle
  final double circleSize;

  ///colors of circle
  final CircleColor circleColor;

  /// tap call back of like button
  final FireworkButtonTapCallback onTap;

  /// mainAxisAlignment for like button
  final MainAxisAlignment mainAxisAlignment;

  // crossAxisAlignment for like button
  final CrossAxisAlignment crossAxisAlignment;

  ///builder to create like widget
  final FireworkWidgetBuilder fireworkBuilder;

  /// padding of like button
  final EdgeInsetsGeometry padding;

  @override
  State<StatefulWidget> createState() => FireworkButtonState();
}

class FireworkButtonState extends State<FireworkButton>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _outerCircleAnimation;
  Animation<double> _innerCircleAnimation;
  Animation<double> _scaleAnimation;
  Animation<double> _bubblesAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: widget.animationDuration, vsync: this);
    _initAnimations();
  }

  @override
  void didUpdateWidget(FireworkButton oldWidget) {
    if (_controller?.duration != widget.animationDuration) {
      _controller?.dispose();
      _controller =
          AnimationController(duration: widget.animationDuration, vsync: this);
      _initControlAnimation();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.fireworkController?.listener = () {
      if (_controller.isAnimating) {
        return;
      }
      _animateFirework();
    };
    var children = [
      AnimatedBuilder(
        animation: _controller,
        builder: (c, w) {
          final fireworkWidget = widget.fireworkBuilder?.call();
          return Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Positioned(
                top: (widget.size - widget.bubblesSize) / 2.0,
                left: (widget.size - widget.bubblesSize) / 2.0,
                child: CustomPaint(
                  size: Size(widget.bubblesSize, widget.bubblesSize),
                  painter: BubblesPainter(
                    currentProgress: _bubblesAnimation.value,
                    color1: widget.bubblesColor.dotPrimaryColor,
                    color2: widget.bubblesColor.dotSecondaryColor,
                    color3: widget.bubblesColor.dotThirdColorReal,
                    color4: widget.bubblesColor.dotLastColorReal,
                  ),
                ),
              ),
              Positioned(
                top: (widget.size - widget.circleSize) / 2.0,
                left: (widget.size - widget.circleSize) / 2.0,
                child: CustomPaint(
                  size: Size(widget.circleSize, widget.circleSize),
                  painter: CirclePainter(
                    innerCircleRadiusProgress: _innerCircleAnimation.value,
                    outerCircleRadiusProgress: _outerCircleAnimation.value,
                    circleColor: widget.circleColor,
                  ),
                ),
              ),
              Container(
                width: widget.size,
                height: widget.size,
                alignment: Alignment.center,
                child: Transform.scale(
                  scale: _controller.isAnimating ? _scaleAnimation.value : 1.0,
                  child: SizedBox(
                    child: fireworkWidget,
                    height: widget.size,
                    width: widget.size,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    ];

    Widget result = Column(
      mainAxisAlignment: widget.mainAxisAlignment,
      crossAxisAlignment: widget.crossAxisAlignment,
      children: children,
    );

    if (widget.padding != null) {
      result = Padding(
        padding: widget.padding,
        child: result,
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: result,
    );
  }

  void onTap() {
    if (_controller.isAnimating) {
      return;
    }
    if (widget.onTap != null) {
      widget.onTap();
    }
    _animateFirework();
  }

  void _animateFirework() {
    if (mounted) {
      setState(() {
        _controller.reset();
        _controller.forward();
      });
    }
  }

  void _initAnimations() {
    _initControlAnimation();
  }

  void _initControlAnimation() {
    _outerCircleAnimation = Tween<double>(
      begin: 0.1,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          0.3,
          curve: Curves.ease,
        ),
      ),
    );
    _innerCircleAnimation = Tween<double>(
      begin: 0.2,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.2,
          0.5,
          curve: Curves.ease,
        ),
      ),
    );
    final animate = Tween<double>(
      begin: 0.2,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.35,
          0.7,
          curve: OvershootCurve(),
        ),
      ),
    );
    _scaleAnimation = animate;
    _bubblesAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.1,
          1.0,
          curve: Curves.decelerate,
        ),
      ),
    );
  }
}
