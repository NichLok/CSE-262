//1. lexical error

fn lexical_error() {
    println!"Hello, world!"; //no brackets around "Hello, world!". Expects and identifier but does not receive it.
}


//2. syntax error

fn syntax_error() { 
    prlntin!("Hello, world!"); //println is spelled incorrectly here. This throws a syntax error as it could not find such a function.
}


//3. semantic error

fn semantic_error() {
    println!(6); //error thrown because 6 is and integer when println expects a string
}


//4. ownership error
//example taken from Homework 2

fn main() {
    let vec0 = Vec::new();

    let mut vec1 = fill_vec(vec0);

    println!("{} has length {} content `{:?}`", "vec0", vec0.len(), vec0);

    vec1.push(88);

    println!("{} has length {} content `{:?}`", "vec1", vec1.len(), vec1);
}

fn fill_vec(vec: Vec<i32>) -> Vec<i32> {
    let mut vec = vec;

    vec.push(22);
    vec.push(44);
    vec.push(66);

    vec
}

//5. lifetime error

fn main() {
    let x = "5";
    println!("{} {}",x,y);
}

fn new_char() {
    let y = "6";
}