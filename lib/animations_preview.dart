import 'package:ui_kit/ui_kit.dart';

class AnimationsPreview extends StatefulWidget {
  const AnimationsPreview({super.key});

  @override
  State<AnimationsPreview> createState() => _AnimationsPreviewState();
}

class _AnimationsPreviewState extends State<AnimationsPreview> with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    duration: const Duration(milliseconds: 3000),
    vsync: this,
  );

  @override
  void initState() {
    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Card(
        color: Theme.of(context).colorPalette.surface,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UiKitText.titleMedium(
                'Animation Preview',
                color: Theme.of(context).colorPalette.onSurface,
              ),
              const SizedBox(height: 16),
              UiKitText.titleSmall(
                'Bounce In',
                color: Theme.of(context).colorPalette.onSurface,
              ),
              SizedBox(
                height: 16,
                width: 100,
                child: _AnimationPreview(
                  animation: CurvedAnimation(
                    parent: animationController,
                    curve: UiKitCurves.bounceIn,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              UiKitText.titleSmall(
                'Bounce Out',
                color: Theme.of(context).colorPalette.onSurface,
              ),
              SizedBox(
                height: 16,
                width: 100,
                child: _AnimationPreview(
                  animation: CurvedAnimation(
                    parent: animationController,
                    curve: UiKitCurves.bounceOut,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              UiKitText.titleSmall(
                'Decelerate',
                color: Theme.of(context).colorPalette.onSurface,
              ),
              SizedBox(
                height: 16,
                width: 100,
                child: _AnimationPreview(
                  animation: CurvedAnimation(
                    parent: animationController,
                    curve: UiKitCurves.decelerate,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      );
}

class _AnimationPreview extends StatelessWidget {
  const _AnimationPreview({
    required this.animation,
  });

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _AnimationPainter(
        animation: animation,
        trackColor: Theme.of(context).colorPalette.primary,
        thumbColor: Theme.of(context).colorPalette.onPrimary,
        thumbOutlineColor: Theme.of(context).colorPalette.primary,
      ),
      child: const SizedBox(height: 8),
    );
  }
}

class _AnimationPainter extends CustomPainter {
  _AnimationPainter({
    required this.animation,
    required this.trackColor,
    required this.thumbColor,
    required this.thumbOutlineColor,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color trackColor;
  final Color thumbColor;
  final Color thumbOutlineColor;

  @override
  void paint(Canvas canvas, Size size) {
    final trackPaint = Paint()
      ..color = trackColor
      ..style = PaintingStyle.fill;

    final thumbPaint = Paint()
      ..color = thumbColor
      ..style = PaintingStyle.fill;

    final thumbOutlinePaint = Paint()
      ..color = thumbOutlineColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final thumbRadius = size.height / 3;
    final trackRect = Rect.fromLTWH(0, 0, size.width, size.height);
    final thumbRect = Rect.fromCircle(
      center: Offset(
        animation.value * (size.width - thumbRadius * 2) + thumbRadius,
        size.height / 2,
      ),
      radius: thumbRadius,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(trackRect, const Radius.circular(100)),
      trackPaint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(thumbRect, Radius.circular(thumbRadius)),
      thumbPaint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(thumbRect, Radius.circular(thumbRadius)),
      thumbOutlinePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
