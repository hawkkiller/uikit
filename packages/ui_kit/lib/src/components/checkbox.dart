import 'package:ui_kit/ui_kit.dart';

/// {@template checkbox}
/// A material design checkbox.
/// {@endtemplate}
class UiCheckbox extends StatelessWidget {
  /// {@macro checkbox}
  const UiCheckbox({
    required this.value,
    required this.onChanged,
    this.tristate = false,
    super.key,
  });

  /// The value of the checkbox.
  final bool? value;

  /// Whether this checkbox is in a tristate state.
  final bool tristate;

  /// Called when the value of the checkbox should change.
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final selectedColor = Theme.of(context).colorPalette.primary;
    final checkColor = Theme.of(context).colorPalette.primaryForeground;
    final overlayColor = WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) {
          return selectedColor.withOpacity(0.04);
        }

        return null;
      },
    );

    final fillColor = WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return Theme.of(context).colorPalette.primary.withOpacity(0.38);
        }

        if (states.contains(WidgetState.selected)) {
          return selectedColor;
        }

        return Theme.of(context).colorPalette.background;
      },
    );

    return Checkbox(
      value: value,
      onChanged: onChanged,
      tristate: tristate,
      activeColor: selectedColor,
      checkColor: checkColor,
      fillColor: fillColor,
      focusColor: selectedColor.withOpacity(0.12),
      hoverColor: selectedColor.withOpacity(0.08),
      overlayColor: overlayColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
