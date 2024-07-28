import 'package:ui_kit/ui_kit.dart';
import 'package:uikit/main.dart';

class ColorPalettePreview extends StatelessWidget {
  const ColorPalettePreview({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).colorPalette;

    return Card(
      color: colorPalette.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            UiKitText.titleMedium('Light'),
            const SizedBox(height: 8),
            _PalettePreview(colorPalette: lightPalette),
            const SizedBox(height: 24),
            UiKitText.titleMedium('Dark'),
            const SizedBox(height: 8),
            _PalettePreview(colorPalette: darkPalette),
          ],
        ),
      ),
    );
  }
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
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: widget.colorPalette.toMap().entries.map((entry) {
        final name = entry.key;
        final color = entry.value;

        return Column(
          key: ValueKey(name),
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: 100,
              child: Material(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            UiKitText.labelMedium(name),
          ],
        );
      }).toList(),
    );
  }
}
