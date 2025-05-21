import 'package:flutter/material.dart';

class AnimatedPageRoute extends PageRouteBuilder {
  final Widget page;

  AnimatedPageRoute({required this.page})
      : super(
          transitionDuration: const Duration(milliseconds: 120),
          reverseTransitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curve = CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn,
            );

            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.03, 0.0), // Tiny slide from right
                end: Offset.zero,
              ).animate(curve),
              child: FadeTransition(
                opacity: curve,
                child: child,
              ),
            );
          },
        );
}
