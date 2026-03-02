import 'package:flutter_test/flutter_test.dart';
import 'package:smart_excuse_generator/app/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());
    
    // Check if app builds without crashing
    expect(find.byType(App), findsOneWidget);
  });
}
