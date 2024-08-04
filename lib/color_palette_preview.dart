import 'package:ui_kit/ui_kit.dart';
import 'package:uikit/main.dart';

class ColorPalettePreview extends StatelessWidget {
  const ColorPalettePreview({super.key});

  @override
  Widget build(BuildContext context) => UiCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              UiText.titleMedium('Light'),
              const SizedBox(height: 8),
              _PalettePreview(colorPalette: lightPalette),
              const SizedBox(height: 24),
              UiText.titleMedium('Dark'),
              const SizedBox(height: 8),
              _PalettePreview(colorPalette: darkPalette),
            ],
          ),
        ),
      );
}

class _PalettePreview extends StatefulWidget {
  const _PalettePreview({
    required this.colorPalette,
  });

  final ColorPalette colorPalette;

  @override
  State<_PalettePreview> createState() => _PalettePreviewState();
}

class _PalettePreviewState extends State<_PalettePreview> {
  @override
  Widget build(BuildContext context) => Wrap(
        spacing: 16,
        runSpacing: 16,
        children: widget.colorPalette.toMap().entries.map((entry) {
          final name = entry.key;
          final color = entry.value;

          return SizedBox(
            width: 120,
            height: 100,
            child: Column(
              key: ValueKey(name),
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox.square(
                  dimension: 60,
                  child: Material(
                    color: color,
                    elevation: 2,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                UiText.labelMedium(name),
              ],
            ),
          );
        }).toList(),
      );
}
