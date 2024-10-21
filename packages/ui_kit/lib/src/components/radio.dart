import 'package:ui_kit/ui_kit.dart';

/// {@template radio}
/// A radio button widget with project style.
/// {@endtemplate}
class UiRadio<T> extends StatelessWidget {
  /// {@macro radio}
  const UiRadio({
    required this.value,
    required this.groupValue,
    this.onChanged,
    super.key,
  });

  /// The value of the radio button.
  final T value;

  /// The currently selected value for a group of radio buttons.
  final T groupValue;

  /// Called when the value of the radio button should change.
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final activeColor = Theme.of(context).colorPalette.primary;

    final inactiveColor = Theme.of(context).colorPalette.foreground.withOpacity(0.38);

    final fillColor = WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return inactiveColor;
        }
        if (states.contains(WidgetState.selected)) {
          return activeColor;
        }
        return null;
      },
    );

    return Radio<T>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: activeColor,
      fillColor: fillColor,
    );
  }
}
