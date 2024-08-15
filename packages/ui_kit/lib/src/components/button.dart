import 'package:ui_kit/ui_kit.dart';

/// Different variants of a [UiFilledButton].
enum FilledButtonVariant {
  /// A button for primary actions in the app.
  /// For example, the "Save" button in a form.
  primary,

  /// A button for alternative actions in the app.
  /// For example, the "Cancel" button in a form.
  secondary,

  /// A button for destructive actions in the app.
  /// For example, the "Delete" button in a form.
  destructive,
}

enum IconButtonVariant {
  standard,
  outlined,
}

/// A filled button that follows the UI Kit design system.
class UiFilledButton extends ButtonStyleButton {
  /// A factory constructor for a primary [UiFilledButton].
  UiFilledButton.primary({
    required VoidCallback? onPressed,
    bool enabled = true,
    IconAlignment iconAlignment = IconAlignment.start,
    Widget? label,
    Widget? icon,
    VoidCallback? onLongPress,
    super.autofocus = false,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.clipBehavior,
    super.statesController,
    super.isSemanticButton,
    super.key,
  })  : variant = FilledButtonVariant.primary,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  /// A factory constructor for a secondary [UiFilledButton].
  UiFilledButton.secondary({
    required VoidCallback? onPressed,
    bool enabled = true,
    IconAlignment iconAlignment = IconAlignment.start,
    Widget? label,
    Widget? icon,
    VoidCallback? onLongPress,
    super.autofocus = false,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.clipBehavior,
    super.statesController,
    super.isSemanticButton,
    super.key,
  })  : variant = FilledButtonVariant.secondary,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  /// A factory constructor for a destructive [UiFilledButton].
  UiFilledButton.destructive({
    required VoidCallback? onPressed,
    bool enabled = true,
    IconAlignment iconAlignment = IconAlignment.start,
    Widget? label,
    Widget? icon,
    VoidCallback? onLongPress,
    super.autofocus = false,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.clipBehavior,
    super.statesController,
    super.isSemanticButton,
    super.key,
  })  : variant = FilledButtonVariant.destructive,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
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

class UiOutlinedButton extends ButtonStyleButton {
  UiOutlinedButton({
    required VoidCallback? onPressed,
    Widget? label,
    Widget? icon,
    VoidCallback? onLongPress,
    bool enabled = true,
    IconAlignment iconAlignment = IconAlignment.start,
    super.autofocus = false,
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
            child: _ButtonIconAndLabel(
              icon: icon,
              label: label,
              iconAlignment: iconAlignment,
            ));

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final theme = Theme.of(context);

    final colorPalette = theme.colorPalette;
    final typography = theme.appTypography;

    return _OutlinedButtonStyle(
      colorPalette: colorPalette,
      typography: typography,
    );
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
}

class UiIconButton extends ButtonStyleButton {
  const UiIconButton.standard({
    required Widget? icon,
    required VoidCallback? onPressed,
    bool enabled = true,
    VoidCallback? onLongPress,
    super.autofocus = false,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.clipBehavior,
    super.statesController,
    super.isSemanticButton,
    super.key,
  })  : variant = IconButtonVariant.standard,
        super(
          child: icon,
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  const UiIconButton.outlined({
    required Widget? icon,
    required VoidCallback? onPressed,
    bool enabled = true,
    VoidCallback? onLongPress,
    super.autofocus = false,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.clipBehavior,
    super.statesController,
    super.isSemanticButton,
    super.key,
  })  : variant = IconButtonVariant.outlined,
        super(
          child: icon,
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  final IconButtonVariant variant;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final theme = Theme.of(context);

    final colorPalette = theme.colorPalette;
    final typography = theme.appTypography;

    return switch (variant) {
      IconButtonVariant.standard => _IconButtonStandardStyle(
          colorPalette: colorPalette,
          typography: typography,
        ),
      IconButtonVariant.outlined => _IconButtonOutlinedStyle(
          colorPalette: colorPalette,
          typography: typography,
        ),
    };
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
}

class UiTextButton extends ButtonStyleButton {
  const UiTextButton._({
    required super.child,
    required VoidCallback? onPressed,
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

  factory UiTextButton({
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
      UiTextButton._(
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
        statesController: statesController,
        isSemanticButton: isSemanticButton,
        child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
      );

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final theme = Theme.of(context);

    final colorPalette = theme.colorPalette;
    final typography = theme.appTypography;

    return _TextButtonStyle(
      colorPalette: colorPalette,
      typography: typography,
    );
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
}

class _FilledButtonStyle extends _UiBaseButtonStyle {
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
            return switch (variant) {
              FilledButtonVariant.primary => colorPalette.primary.withOpacity(.38),
              FilledButtonVariant.secondary => colorPalette.secondary.withOpacity(.38),
              FilledButtonVariant.destructive => colorPalette.destructive.withOpacity(.38),
            };
          }

          return switch (variant) {
            FilledButtonVariant.primary => colorPalette.primaryForeground,
            FilledButtonVariant.secondary => colorPalette.secondaryForeground,
            FilledButtonVariant.destructive => colorPalette.destructiveForeground,
          };
        },
      );

  @override
  WidgetStateProperty<Color?>? get backgroundColor => WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return switch (variant) {
              FilledButtonVariant.primary => colorPalette.primary.withOpacity(.12),
              FilledButtonVariant.secondary => colorPalette.secondary.withOpacity(.12),
              FilledButtonVariant.destructive => colorPalette.destructive.withOpacity(.12),
            };
          }

          return switch (variant) {
            FilledButtonVariant.primary => colorPalette.primary,
            FilledButtonVariant.secondary => colorPalette.secondary,
            FilledButtonVariant.destructive => colorPalette.destructive,
          };
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        final color = switch (variant) {
          FilledButtonVariant.primary => colorPalette.primaryForeground,
          FilledButtonVariant.secondary => colorPalette.secondaryForeground,
          FilledButtonVariant.destructive => colorPalette.destructiveForeground,
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
  WidgetStateProperty<Color>? get shadowColor =>
      WidgetStatePropertyAll<Color>(colorPalette.foreground.withOpacity(.20));
}

class _OutlinedButtonStyle extends _UiBaseButtonStyle {
  const _OutlinedButtonStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.mutedForeground;
          }

          return colorPalette.primary;
        },
      );

  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      const WidgetStatePropertyAll(Colors.transparent);

  @override
  WidgetStateProperty<Color?>? get overlayColor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        final color = colorPalette.primary;

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
  WidgetStateProperty<OutlinedBorder?>? get shape => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: colorPalette.foreground.withOpacity(0.12), width: 1),
            );
          }

          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: colorPalette.border,
              width: 1,
            ),
          );
        },
      );
}

class _IconButtonStandardStyle extends _IconButtonBaseStyle {
  const _IconButtonStandardStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.muted;
          }

          return colorPalette.foreground;
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return colorPalette.foreground.withOpacity(0.1);
          }

          if (states.contains(WidgetState.hovered)) {
            return colorPalette.foreground.withOpacity(0.08);
          }

          if (states.contains(WidgetState.focused)) {
            return colorPalette.foreground.withOpacity(0.1);
          }

          return null;
        },
      );
}

class _IconButtonOutlinedStyle extends _IconButtonBaseStyle {
  const _IconButtonOutlinedStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<OutlinedBorder?>? get shape => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: colorPalette.mutedForeground.withOpacity(0.12), width: 1),
            );
          }

          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: colorPalette.border,
              width: 1,
            ),
          );
        },
      );

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.muted;
          }

          return colorPalette.foreground;
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return colorPalette.foreground.withOpacity(0.1);
          }

          if (states.contains(WidgetState.hovered)) {
            return colorPalette.foreground.withOpacity(0.08);
          }

          if (states.contains(WidgetState.focused)) {
            return colorPalette.foreground.withOpacity(0.1);
          }

          return null;
        },
      );
}

class _IconButtonBaseStyle extends _UiBaseButtonStyle {
  const _IconButtonBaseStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      const WidgetStatePropertyAll(Colors.transparent);

  @override
  WidgetStateProperty<Color?>? get foregroundColor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return colorPalette.foreground.withOpacity(0.38);
        }

        return colorPalette.foreground;
      });

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return colorPalette.foreground.withOpacity(0.1);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorPalette.foreground.withOpacity(0.08);
          }
          if (states.contains(WidgetState.focused)) {
            return colorPalette.foreground.withOpacity(0.1);
          }
          return null;
        },
      );

  @override
  WidgetStateProperty<EdgeInsetsGeometry>? get padding =>
      const WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(8.0));

  @override
  WidgetStateProperty<Size>? get minimumSize => const WidgetStatePropertyAll<Size>(Size.square(48));

  @override
  WidgetStateProperty<double>? get iconSize => const WidgetStatePropertyAll<double>(24.0);
}

class _TextButtonStyle extends _UiBaseButtonStyle {
  const _TextButtonStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      const WidgetStatePropertyAll(Colors.transparent);

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.foreground.withOpacity(0.38);
          }

          return colorPalette.primary;
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return colorPalette.primary.withOpacity(0.1);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorPalette.primary.withOpacity(0.08);
          }
          if (states.contains(WidgetState.focused)) {
            return colorPalette.primary.withOpacity(0.1);
          }
          return null;
        },
      );
}

class _UiBaseButtonStyle extends ButtonStyle {
  const _UiBaseButtonStyle({
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
  WidgetStateProperty<OutlinedBorder?>? get shape => const WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      );

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
  WidgetStateProperty<TextStyle?>? get textStyle => WidgetStatePropertyAll(typography.bodyMedium);

  @override
  WidgetStateProperty<Color>? get shadowColor =>
      const WidgetStatePropertyAll<Color>(Colors.transparent);

  @override
  VisualDensity? get visualDensity => VisualDensity.adaptivePlatformDensity;

  @override
  WidgetStateProperty<Color>? get surfaceTintColor =>
      const WidgetStatePropertyAll<Color>(Colors.transparent);

  @override
  WidgetStateProperty<double?>? get elevation => const WidgetStatePropertyAll(0);

  @override
  WidgetStateProperty<MouseCursor?>? get mouseCursor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return SystemMouseCursors.basic;
        }
        return SystemMouseCursors.click;
      });

  @override
  WidgetStateProperty<double>? get iconSize => const WidgetStatePropertyAll<double>(18.0);

  @override
  ButtonLayerBuilder? get backgroundBuilder => _backgroundBuilder;

  Widget _backgroundBuilder(BuildContext context, Set<WidgetState> states, Widget? child) {
    if (child == null) return const SizedBox.shrink();

    return OutlineFocusButtonBorder(
      showBorder: states.contains(WidgetState.focused),
      border: RoundedRectangleBorder(
        side: BorderSide(color: colorPalette.ring, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
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
    required this.border,
    super.key,
  });

  final Widget child;
  final bool showBorder;
  final ShapeBorder border;

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: _OutlineFocusButtonBorderPainter(
          showBorder: showBorder,
          border: border,
        ),
        child: child,
      );
}

class _OutlineFocusButtonBorderPainter extends CustomPainter {
  _OutlineFocusButtonBorderPainter({
    required bool showBorder,
    required ShapeBorder border,
  })  : _showBorder = showBorder,
        _border = border;

  final bool _showBorder;
  final ShapeBorder _border;

  @override
  void paint(Canvas canvas, Size size) {
    if (!_showBorder) return;

    final rect = Offset.zero & size;

    _border.paint(canvas, rect);
  }

  @override
  bool shouldRepaint(_OutlineFocusButtonBorderPainter oldDelegate) =>
      _showBorder != oldDelegate._showBorder || _border != oldDelegate._border;

  @override
  bool shouldRebuildSemantics(_OutlineFocusButtonBorderPainter oldDelegate) => false;
}
