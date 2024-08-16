import 'package:ui_kit/ui_kit.dart';

enum ButtonVariant {
  /// Button with background filled with primary color
  filledPrimary,

  /// Button with background filled with secondary color
  filledSecondary,

  /// Button with background filled with destructive color
  filledDestructive,

  /// Button with border
  outlined,

  /// Button just with text
  text,

  /// Button just with icon
  icon,

  /// Button with outlined border and icon
  iconOutlined,
}

class UiButton extends ButtonStyleButton {
  UiButton.filledPrimary({
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
  })  : variant = ButtonVariant.filledPrimary,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  UiButton.filledSecondary({
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
  })  : variant = ButtonVariant.filledSecondary,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  UiButton.filledDestructive({
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
  })  : variant = ButtonVariant.filledDestructive,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  UiButton.outlined({
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
  })  : variant = ButtonVariant.outlined,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  UiButton.text({
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
  })  : variant = ButtonVariant.text,
        super(
          child: _ButtonIconAndLabel(icon: icon, label: label, iconAlignment: iconAlignment),
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  const UiButton.icon({
    required VoidCallback? onPressed,
    bool enabled = true,
    IconAlignment iconAlignment = IconAlignment.start,
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
  })  : variant = ButtonVariant.icon,
        super(
          child: icon,
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  const UiButton.iconOutlined({
    required VoidCallback? onPressed,
    bool enabled = true,
    IconAlignment iconAlignment = IconAlignment.start,
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
  })  : variant = ButtonVariant.iconOutlined,
        super(
          child: icon,
          onPressed: enabled ? onPressed : null,
          onLongPress: enabled ? onLongPress : null,
        );

  final ButtonVariant variant;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorPalette;
    final typography = theme.appTypography;

    return switch (variant) {
      ButtonVariant.filledPrimary => _FilledButtonPrimaryStyle(
          colorPalette: colors,
          typography: typography,
        ),
      ButtonVariant.filledSecondary => _FilledButtonSecondaryStyle(
          colorPalette: colors,
          typography: typography,
        ),
      ButtonVariant.filledDestructive => _FilledButtonDestructiveStyle(
          colorPalette: colors,
          typography: typography,
        ),
      ButtonVariant.outlined => _OutlinedButtonStyle(
          colorPalette: colors,
          typography: typography,
        ),
      ButtonVariant.text => _TextButtonStyle(
          colorPalette: colors,
          typography: typography,
        ),
      ButtonVariant.icon => _IconButtonStandardStyle(
          colorPalette: colors,
          typography: typography,
        ),
      ButtonVariant.iconOutlined => _IconButtonOutlinedStyle(
          colorPalette: colors,
          typography: typography,
        ),
    };
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) => null;
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

class _FilledButtonPrimaryStyle extends _UiBaseButtonStyle {
  const _FilledButtonPrimaryStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.primary.withOpacity(.38);
          }

          return colorPalette.primaryForeground;
        },
      );

  @override
  WidgetStateProperty<Color?>? get backgroundColor => WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.primary.withOpacity(.12);
          }

          return colorPalette.primary;
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        final color = colorPalette.primaryForeground;

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
  WidgetStateProperty<double>? get elevation => WidgetStateProperty.resolveWith((Set<WidgetState> states) {
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
      WidgetStatePropertyAll<Color>(colorPalette.foreground.withOpacity(.18));
}

class _FilledButtonSecondaryStyle extends _UiBaseButtonStyle {
  const _FilledButtonSecondaryStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.secondary.withOpacity(.38);
          }

          return colorPalette.secondaryForeground;
        },
      );

  @override
  WidgetStateProperty<Color?>? get backgroundColor => WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.secondary.withOpacity(.12);
          }

          return colorPalette.secondary;
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        final color = colorPalette.secondaryForeground;

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
  WidgetStateProperty<double>? get elevation => WidgetStateProperty.resolveWith((Set<WidgetState> states) {
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
      WidgetStatePropertyAll<Color>(colorPalette.foreground.withOpacity(.18));
}

class _FilledButtonDestructiveStyle extends _UiBaseButtonStyle {
  const _FilledButtonDestructiveStyle({
    required super.colorPalette,
    required super.typography,
  });

  @override
  WidgetStateProperty<Color?>? get foregroundColor => WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.destructive.withOpacity(.38);
          }

          return colorPalette.destructiveForeground;
        },
      );

  @override
  WidgetStateProperty<Color?>? get backgroundColor => WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return colorPalette.destructive.withOpacity(.12);
          }

          return colorPalette.destructive;
        },
      );

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        final color = colorPalette.destructiveForeground;

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
  WidgetStateProperty<double>? get elevation => WidgetStateProperty.resolveWith((Set<WidgetState> states) {
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
      WidgetStatePropertyAll<Color>(colorPalette.foreground.withOpacity(.18));
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
  WidgetStateProperty<Color>? get shadowColor => const WidgetStatePropertyAll<Color>(Colors.transparent);

  @override
  VisualDensity? get visualDensity => VisualDensity.adaptivePlatformDensity;

  @override
  WidgetStateProperty<Color>? get surfaceTintColor => const WidgetStatePropertyAll<Color>(Colors.transparent);

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
  WidgetStateProperty<Color?>? get backgroundColor => const WidgetStatePropertyAll(Colors.transparent);

  @override
  WidgetStateProperty<Color?>? get overlayColor => WidgetStateProperty.resolveWith((Set<WidgetState> states) {
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
  WidgetStateProperty<Color?>? get backgroundColor => const WidgetStatePropertyAll(Colors.transparent);

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
  WidgetStateProperty<Color?>? get backgroundColor => const WidgetStatePropertyAll(Colors.transparent);

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
