import 'package:ui_kit/ui_kit.dart';

/// {@template other_buttons_preview}
/// OtherButtonsPreview widget.
/// {@endtemplate}
class OtherButtonsPreview extends StatelessWidget {
  /// {@macro other_buttons_preview}
  const OtherButtonsPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) => UiCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  UiRadio(
                    value: '',
                    groupValue: '1',
                    onChanged: (value) {},
                  ),
                  const SizedBox(width: 8),
                  UiRadio(
                    value: '2',
                    groupValue: '2',
                    onChanged: (value) {},
                  ),
                  const SizedBox(width: 8),
                  const UiRadio(
                    value: '',
                    groupValue: '1',
                  ),
                  const SizedBox(width: 8),
                  const UiRadio(
                    value: '2',
                    groupValue: '2',
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
