import 'package:ui_kit/ui_kit.dart';
import 'package:uikit/theme_constants.dart';
import 'dart:math' as math;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: createThemeData(
        brightness: Brightness.light,
        palette: colorPalette,
        typography: appTypography,
      ),
      home: const Scaffold(body: UiKitPreview()),
    );
  }
}

class UiKitPreview extends StatelessWidget {
  const UiKitPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: math.max((size.width - 800) / 2, 16),
            vertical: 24,
          ),
          sliver: SliverList.list(
            children: [
              UiKitText.titleMedium('Buttons'),
            ],
          ),
        ),
      ],
    );
  }
}
