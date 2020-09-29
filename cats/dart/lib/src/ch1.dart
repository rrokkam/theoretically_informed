/// The identity function.
T id<T>(T a) => a;

/// Compose two functions.
C Function(A) compose<A, B, C>(C Function(B) a, B Function(A) b) {
  return (A arg) => a(b(arg));
}
