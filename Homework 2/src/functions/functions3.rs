// functions3.rs
// Make me compile! Scroll down for hints :)

#[test]
fn main() {
    call_me(3); //added 3 in call_me function
}

fn call_me(num: i32) {
    for i in 0..num {
        println!("Ring! Call number {}", i + 1);
    }
}




























// This time, the function *declaration* is okay, but there's something wrong
// with the place where we're calling the function.
