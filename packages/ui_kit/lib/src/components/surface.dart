import 'package:ui_kit/ui_kit.dart';

/// {@template surface}
/// A widget that displays a surface with project style.
///
/// Uses [Material] under the hood.
/// {@endtemplate}
class Surface extends StatelessWidget {
  /// {@macro surface}
  const Surface({
    required this.child,
    this.color,
    this.elevation = 0,
    this.shape,
    super.key,
  });

  /// The elevation of the surface.
  final double elevation;

  /// The color to paint the surface.
  final Color? color;

  /// The widget below this widget in the tree.
  final ShapeBorder? shape;

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorPalette.background;

    return Material(
      elevation: elevation,
      color: color,
      shape: shape,
      shadowColor: Theme.of(context).colorPalette.foreground.withOpacity(.24),
      surfaceTintColor: color,
      child: child,
    );
  }
}
