import 'lib/exercises.dart';

void main() {
  successor(int x) => x + 1;
  print(
    '(id \u26ac successor)(0) == successor(0): '
    '${id(successor(0)) == successor(0)}',
  );
  print(
    '(successor \u26ac id)(0) == successor(0): '
    '${successor(id(0)) == successor(0)}',
  );
  print(
    'successor(successor(0)) = '
    '${compose<int, int, int>(successor, successor)(0)}',
  );
}
