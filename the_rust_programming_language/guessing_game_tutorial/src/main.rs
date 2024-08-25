use std::io;
use rand::Rng;
use std::cmp::Ordering;

fn main() {

    println!("数当てゲーム");
    let secret_number = rand::thread_rng().gen_range(1..101);

    loop {
        println!("予想を入力");

        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("行読み込みに失敗");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("数字を入力してください！");
                continue;
            },
        };

        println!("入力した数字: {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("小さすぎます！"),
            Ordering::Greater => println!("大きすぎます！"),
            Ordering::Equal => {
                println!("正解！");
                break;
            }
        }
    }
}
