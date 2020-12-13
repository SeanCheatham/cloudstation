import 'package:test/test.dart';

import '../lib/src/project_assembler.dart';

void main() {
  // Dummy test
  test('dockerRegistry', () {
    expect(dockerRegistry, equals("registry.cloudstation"));
  });
}
