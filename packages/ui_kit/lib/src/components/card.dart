import 'package:ui_kit/ui_kit.dart';

/// {@template ui_card}
/// A widget that displays a card with project style.
/// {@endtemplate}
class UiCard extends StatelessWidget {
  /// {@macro ui_card}
  const UiCard({
    required this.child,
    super.key,
    this.color,
    this.margin,
  });

  /// The color to paint the card.
  ///
  /// If null, defaults to [ColorPalette.background]
  final Color? color;

  /// The empty space that surrounds the card.
  ///
  /// Defines the card's outer [Padding].
  ///
  /// If this property is null then 4.0 logical pixels of padding is added to
  /// all sides.
  /// 
  /// This is useful for cases when the card is used in limited space and
  /// its shadow may be clipped.
  final EdgeInsetsGeometry? margin;

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  Widget build(BuildContext context) => Padding(
        padding: margin ?? const EdgeInsets.all(4),
        child: Surface(
          color: color,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: child,
        ),
      );
}
