import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:botiknews/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding
        .ensureInitialized(); // Cria o inicializador e faz o binding com o Driver do Flutter
    testWidgets("Full test", (tester) async {
      app.main();
      await tester
          .pumpAndSettle(); // Espera que qualquer mudança de tela tenha sido realizada

      final emailFormField = find.byKey(Key("email"));
      final passwordFormField = find.byKey(Key("password"));
      final loginButton = find.byKey(Key("loginButton"));

      await tester.enterText(emailFormField, 'daniel.ivatiuk@gmail.com');
      await tester.enterText(passwordFormField, '123123');
      await tester.pumpAndSettle();

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      final newPostButton = find.byType(FloatingActionButton);
      await tester.tap(newPostButton);
      await tester.pumpAndSettle();

      final postTextField = find.byKey(Key("postTextField"));
      await tester.enterText(postTextField, 'Nova postagem!!');
      await tester.pumpAndSettle();

      final createPostButton = find.byKey(Key("postFormButton"));
      await tester.tap(createPostButton);
      await tester.pumpAndSettle();
    });
  });
}
