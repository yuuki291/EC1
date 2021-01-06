extern crate rand;

use rand::Rng;

#[no_mangle]

pub extern fn foo(x: f64, y: f64){
    let _rand_num = rand::thread_rng().gen_range(x, y);
    //let _rounded = (rand_num * 1.0).round() / 1.0;
    //println!("{}", rounded);
}

/* 確率を出力 */

#[no_mangle]

pub extern fn fa(){
    let _rand_num = rand::thread_rng().gen_range(0.2, 0.9);
}
