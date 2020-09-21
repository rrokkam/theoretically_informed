pub fn id<T>(x: T) -> T {
    x
}

pub fn compose<A, B, C, F, G>(f: F, g: G) -> impl Fn(A) -> C
where
    F: Fn(A) -> B,
    G: Fn(B) -> C,
{
    move |x| g(f(x))
}

#[test]
fn unital_law() {
    let successor = |x| x + 1;

    for x in 0..10 {
        assert_eq!(compose(successor, id)(x), successor(x));
        assert_eq!(compose(id, successor)(x), successor(x));
    }
}
