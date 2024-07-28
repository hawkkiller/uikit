import 'package:ui_kit/ui_kit.dart';

/// Different variants of a [UiKitFilledButton].
enum FilledButtonVariant {
  /// A button for primary actions in the app.
  /// For example, the "Save" button in a form.
  primary,

  /// A button for alternative actions in the app.
  /// For example, the "Cancel" button in a form.
  secondary;
}

/// A filled button that follows the UI Kit design system.
class UiKitFilledButton extends ButtonStyleButton {
  const UiKitFilledButton._({
    required super.child,
    required VoidCallback? onPressed,
    required this.variant,
    bool enabled = true,
    super.autofocus = false,
    VoidCallback? onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.clipBehavior,
    super.statesController,
    super.isSemanticButton,
    super.key,
  }) : super(
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  /// A factory constructor for a primary [UiKitFilledButton].
  factory UiKitFilledButton.primary({
    required Widget? label,
    required VoidCallback? onPressed,
    Widget? icon,
    bool enabled = true,
    bool autofocus = false,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onFocusChange,
    ValueChanged<bool>? onHover,
    ButtonStyle? style,
    FocusNode? focusNode,
    Clip clipBehavior = Clip.none,
    WidgetStatesController? statesController,
    bool isSemanticButton = true,
    IconAlignment iconAlignment = IconAlignment.start,
    Key? key,
  }) =>
      UiKitFilledButton._(
        onPressed: onPressed,
        enabled: enabled,
        autofocus: autofocus,
        onLongPress: onLongPress,
        onFocusChange: onFocusChange,
        onHover: onHover,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        key: key,
        variant: FilledButtonVariant.primary,
        statesController: statesController,
        isSemanticButton: isSemanticButton,
        child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
      );

  /// A factory constructor for a secondary [UiKitFilledButton].
  factory UiKitFilledButton.secondary({
    required Widget? label,
    required VoidCallback? onPressed,
    Widget? icon,
    bool enabled = true,
    bool autofocus = false,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onFocusChange,
    ValueChanged<bool>? onHover,
    ButtonStyle? style,
    FocusNode? focusNode,
    Clip clipBehavior = Clip.none,
    WidgetStatesController? statesController,
    bool isSemanticButton = true,
    IconAlignment iconAlignment = IconAlignment.start,
    Key? key,
  }) =>
      UiKitFilledButton._(
        onPressed: onPressed,
        enabled: enabled,
        autofocus: autofocus,
        onLongPress: onLongPress,
        onFocusChange: onFocusChange,
        onHover: onHover,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        key: key,
        variant: FilledButtonVariant.secondary,
        statesController: statesController,
        isSemanticButton: isSemanticButton,
        child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
      );

  /// The variant of the button.
  final FilledButtonVariant variant;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final theme = Theme.of(context);

    final colorPalette = theme.colorPalette;
    final typography = theme.appTypography;

    return _FilledButtonStyle(
      colorPalette: colorPalette,
      typography: typography,
      variant: variant,
    );
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
}

/// Different variants of a [UiKitOutlinedButton].
enum OutlinedButtonVariant {
  primary,
  secondary,
}

class UiKitOutlinedButton extends ButtonStyleButton {
  const UiKitOutlinedButton._({
    required super.child,
    required VoidCallback? onPressed,
    required this.variant,
    bool enabled = true,
    super.autofocus = false,
    VoidCallback? onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.clipBehavior,
    super.statesController,
    super.isSemanticButton,
    super.key,
  }) : super(
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  factory UiKitOutlinedButton.primary({
    required Widget? label,
    required VoidCallback? onPressed,
    Widget? icon,
    bool enabled = true,
    bool autofocus = false,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onFocusChange,
    ValueChanged<bool>? onHover,
    ButtonStyle? style,
    FocusNode? focusNode,
    Clip clipBehavior = Clip.none,
    WidgetStatesController? statesController,
    bool isSemanticButton = true,
    IconAlignment iconAlignment = IconAlignment.start,
    Key? key,
  }) =>
      UiKitOutlinedButton._(
        onPressed: onPressed,
        enabled: enabled,
        autofocus: autofocus,
        onLongPress: onLongPress,
        onFocusChange: onFocusChange,
        onHover: onHover,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        key: key,
        variant: OutlinedButtonVariant.primary,
        statesController: statesController,
        isSemanticButton: isSemanticButton,
        child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
      );

  factory UiKitOutlinedButton.secondary({
    required Widget? label,
    required VoidCallback? onPressed,
    Widget? icon,
    bool enabled = true,
    bool autofocus = false,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onFocusChange,
    ValueChanged<bool>? onHover,
    ButtonStyle? style,
    FocusNode? focusNode,
    Clip clipBehavior = Clip.none,
    WidgetStatesController? statesController,
    bool isSemanticButton = true,
    IconAlignment iconAlignment = IconAlignment.start,
    Key? key,
  }) =>
      UiKitOutlinedButton._(
        onPressed: onPressed,
        enabled: enabled,
        autofocus: autofocus,
        onLongPress: onLongPress,
        onFocusChange: onFocusChange,
        onHover: onHover,
        style: style,
        focusNode: focusNode,
        clipBehavior: clipBehavior,
        key: key,
        variant: OutlinedButtonVariant.secondary,
        statesController: statesController,
        isSemanticButton: isSemanticButton,
        child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
      );

  final OutlinedButtonVariant variant;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final theme = Theme.of(context);

    final colorPalette = theme.colorPalette;
    final typography = theme.appTypography;

    return _OutlinedButtonStyle(
      colorPalette: colorPalette,
      typography: typography,
      variant: variant,
    );
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
}

class _FilledButtonStyle extends _UiKitBaseButtonStyle {
  const _FilledButtonStyle({
    required super.colorPalette,
    required super.typography,
    required this.variant,
  });

  /// The variant of the button.
  final FilledButtonVariant variant;

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.onSurface.withOpacity(0.38);
          }

          switch (variant) {
            case FilledButtonVariant.primary:
              return colorPalette.onPrimary;
            case FilledButtonVariant.secondary:
              return colorPalette.onSecondary;
          }
        },
      );

  @override
  WidgetStateProperty<Color?>? get backgroundColor => WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.onSurface.withOpacity(.12);
          }

          switch (variant) {
            case FilledButtonVariant.primary:
              return colorPalette.primary;
            case FilledButtonVariant.secondary:
              return colorPalette.secondary;
          }
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.pressed)) {
          return colorPalette.onPrimary.withOpacity(0.1);
        }
        if (states.contains(WidgetState.hovered)) {
          return colorPalette.onPrimary.withOpacity(0.08);
        }
        if (states.contains(WidgetState.focused)) {
          return colorPalette.onPrimary.withOpacity(0.1);
        }
        return null;
      });
}

class _OutlinedButtonStyle extends _UiKitBaseButtonStyle {
  const _OutlinedButtonStyle({
    required super.colorPalette,
    required super.typography,
    required this.variant,
  });

  /// The variant of the button.
  final OutlinedButtonVariant variant;

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.onSurface.withOpacity(0.38);
          }

          switch (variant) {
            case OutlinedButtonVariant.primary:
              return colorPalette.primary;
            case OutlinedButtonVariant.secondary:
              return colorPalette.secondary;
          }
        },
      );

  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      const WidgetStatePropertyAll(Colors.transparent);

  @override
  WidgetStateProperty<Color?>? get overlayColor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        final color = switch (variant) {
          OutlinedButtonVariant.primary => colorPalette.primary,
          OutlinedButtonVariant.secondary => colorPalette.secondary,
        };

        if (states.contains(WidgetState.pressed)) {
          return color.withOpacity(0.1);
        }
        if (states.contains(WidgetState.hovered)) {
          return color.withOpacity(0.08);
        }
        if (states.contains(WidgetState.focused)) {
          return color.withOpacity(0.1);
        }

        return null;
      });

  @override
  WidgetStateProperty<Color>? get shadowColor =>
      const WidgetStatePropertyAll<Color>(Colors.transparent);

  @override
  WidgetStateProperty<Color>? get surfaceTintColor =>
      const WidgetStatePropertyAll<Color>(Colors.transparent);

  @override
  WidgetStateProperty<double>? get elevation => const WidgetStatePropertyAll<double>(0.0);

  @override
  WidgetStateProperty<OutlinedBorder?>? get shape => WidgetStatePropertyAll(
    StadiumBorder(
      side: BorderSide(
        color: colorPalette.outline,
        width: 1,
      ),
    )
  );
}

class _UiKitBaseButtonStyle extends ButtonStyle {
  const _UiKitBaseButtonStyle({
    required this.colorPalette,
    required this.typography,
  });

  /// The color palette to use for the button.
  final ColorPalette colorPalette;

  /// The typography to use for the button.
  final AppTypography typography;

  @override
  AlignmentGeometry? get alignment => Alignment.center;

  @override
  Duration? get animationDuration => const Duration(milliseconds: 200);

  @override
  WidgetStateProperty<OutlinedBorder?>? get shape => const WidgetStatePropertyAll(StadiumBorder());

  @override
  MaterialTapTargetSize? get tapTargetSize => MaterialTapTargetSize.shrinkWrap;

  @override
  WidgetStateProperty<EdgeInsetsGeometry?>? get padding => const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      );

  @override
  WidgetStateProperty<Size?>? get minimumSize => const WidgetStatePropertyAll(Size(60, 40));

  @override
  WidgetStateProperty<Size?>? get maximumSize => const WidgetStatePropertyAll(Size.infinite);

  @override
  WidgetStateProperty<TextStyle?>? get textStyle => WidgetStatePropertyAll(typography.labelLarge);

  @override
  WidgetStateProperty<Color>? get shadowColor => WidgetStatePropertyAll<Color>(colorPalette.shadow);

  @override
  VisualDensity? get visualDensity => VisualDensity.adaptivePlatformDensity;

  @override
  WidgetStateProperty<Color>? get surfaceTintColor =>
      const WidgetStatePropertyAll<Color>(Colors.transparent);

  @override
  WidgetStateProperty<MouseCursor?>? get mouseCursor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return SystemMouseCursors.basic;
        }
        return SystemMouseCursors.click;
      });

  @override
  WidgetStateProperty<double>? get elevation =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return 0.0;
        }
        if (states.contains(WidgetState.pressed)) {
          return 0.0;
        }
        if (states.contains(WidgetState.hovered)) {
          return 1.0;
        }
        if (states.contains(WidgetState.focused)) {
          return 0.0;
        }
        return 0.0;
      });

  @override
  ButtonLayerBuilder? get backgroundBuilder => _backgroundBuilder;

  Widget _backgroundBuilder(BuildContext context, Set<WidgetState> states, Widget? child) {
    if (child == null) return const SizedBox.shrink();

    if (states.contains(WidgetState.focused)) {
      return OutlineFocusButtonBorder(
        showBorder: true,
        focusedBorderColor: colorPalette.focusOutline,
        focusedBorderWidth: 2,
        child: child,
      );
    }

    return child;
  }
}

class _ButtonIconAndLabel extends StatelessWidget {
  const _ButtonIconAndLabel({
    required this.icon,
    required this.label,
    required this.iconAlignment,
  });

  final Widget? icon;
  final Widget? label;
  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: iconAlignment == IconAlignment.start
            ? [
                if (icon != null) icon!,
                if (icon != null && label != null) const SizedBox(width: 8),
                if (label != null) Flexible(child: label!),
              ]
            : [
                if (label != null) Flexible(child: label!),
                if (icon != null && label != null) const SizedBox(width: 8),
                if (icon != null) icon!,
              ],
      );
}

class OutlineFocusButtonBorder extends StatelessWidget {
  const OutlineFocusButtonBorder({
    required this.child,
    required this.showBorder,
    required this.focusedBorderColor,
    required this.focusedBorderWidth,
    super.key,
  });

  final Widget child;
  final bool showBorder;
  final Color focusedBorderColor;
  final double focusedBorderWidth;

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: _OutlineFocusButtonBorderPainter(
          showBorder: showBorder,
          focusedBorderColor: focusedBorderColor,
          focusedBorderWidth: focusedBorderWidth,
        ),
        child: child,
      );
}

class _OutlineFocusButtonBorderPainter extends CustomPainter {
  _OutlineFocusButtonBorderPainter({
    required bool showBorder,
    required Color focusedBorderColor,
    required double focusedBorderWidth,
  })  : _showBorder = showBorder,
        _focusedBorderWidth = focusedBorderWidth,
        _paint = Paint()
          ..color = focusedBorderColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = focusedBorderWidth;

  final bool _showBorder;
  final double _focusedBorderWidth;
  final Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    if (!_showBorder) return;

    canvas.drawRRect(
      RRect.fromLTRBR(
        -_focusedBorderWidth,
        -_focusedBorderWidth,
        size.width + _focusedBorderWidth,
        size.height + _focusedBorderWidth,
        Radius.circular(size.height / 2 + _focusedBorderWidth),
      ),
      _paint,
    );
  }

  @override
  bool shouldRepaint(_OutlineFocusButtonBorderPainter oldDelegate) =>
      _showBorder != oldDelegate._showBorder ||
      _paint.color != oldDelegate._paint.color ||
      _paint.strokeWidth != oldDelegate._paint.strokeWidth;

  @override
  bool shouldRebuildSemantics(_OutlineFocusButtonBorderPainter oldDelegate) => false;
}
