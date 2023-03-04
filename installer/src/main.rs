extern crate sudo;
use anyhow::Result;
use std::env;
use std::error::Error;
use std::io;
use std::io::{stdin, Write};
use std::process;
use std::process::Command;

// TODO: logging and verbose mode
// TODO: better error handling: 
//        - for packages which are not depended on, error
//        should be printed and program should keep running
//        - for packages which have reverse-dependencies, 
//        error should be printed and all reverse-dependencies
//        should be skipped
// TODO: a better understanding of how program
//        sudo's, and better error handling if program
//        is run as unpriviledged user. OR, maybe
//     just implement it myself, like it was done in
//     that blog..

fn run() -> Result<(), Box<dyn Error>> {
    sudo::escalate_if_needed()?;

    println!("Welcome to the installer. Please enter your name for git config.");
    let mut name = String::new();
    stdin().read_line(&mut name)?;

    println!("Your email address, please.");
    let mut email = String::new();
    stdin().read_line(&mut email)?;
    println!("Excellent. Beginning installation.");

    install_xbps_packages()?;
    install_cargo_packages()?;

    let packages_to_configure = ["fish-shell", "alacritty", "helix"];
    configure(&packages_to_configure)?;
    Ok(())
}

fn main() {
    env_logger::init();

    process::exit(match run() {
        Ok(()) => 0,
        Err(e) => {
            eprintln!("Error: {e}");
            1
        }
    });
}

fn install_xbps_packages() -> Result<(), Box<dyn Error>> {
    //sl: the most important package
    print!("installing sl...");
    io::stdout().flush();
    match Command::new("xbps-install").arg("-y").arg("sl").output() {
        Ok(_) => println!("done!"),
        Err(e) => return Err(Box::new(e)),
    }

    //alacritty: terminal emulator
    print!("installing alacritty...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("alacritty")
        .output()?;
    println!("done!");

    //ripgrep: text search tool
    print!("installing ripgrep...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("ripgrep")
        .output()?;
    println!("done!");

    //bat: syntax-highlighted cat
    print!("installing bat...");
    Command::new("xbps-install").arg("-y").arg("bat").output()?;
    println!("done!");

    //bottom: pretty-printed top
    print!("installing bottom...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("bottom")
        .output()?;
    println!("done!");

    //tealdeer: tldr implementation
    print!("installing tealdeer...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("tealdeer")
        .output()?;
    println!("done!");

    //helix: text editor
    print!("installing helix...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("helix")
        .output()?;
    println!("done!");

    //fish: shell
    print!("installing fish-shell...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("fish-shell")
        .output()?;
    println!("done!");

    //pandoc: document format converter
    print!("installing pandoc...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("pandoc")
        .output()?;
    println!("done!");

    //poppler-utils: pdf-rendering library
    print!("installing poppler-utils...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("poppler-utils")
        .output()?;
    println!("done!");

    //ffmpeg: audio converter
    print!("installing ffmpeg...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("ffmpeg")
        .output()?;
    println!("done!");

    //tesseract: optical character recognition engine
    print!("installing tesseract...");
    io::stdout().flush();
    match Command::new("xbps-install")
        .arg("-y")
        .arg("tesseract")
        .output()
    {
        Ok(_) => println!("done!"),
        Err(e) => return Err(Box::new(e)),
    };

    Ok(())
}

fn install_cargo_packages() -> Result<(), Box<dyn Error>> {
    println!("installing ripgrep_all...");
    Command::new("cargo")
        .arg("install")
        .arg("--locked")
        .arg("ripgrep_all")
        .output()?;
    println!("done!");

    Ok(())
}

///symlink configuration folders above with where the program is looking for them 
fn configure(packages: &[&str]) -> Result<(), Box<dyn Error>> {

    //should do the below code, but abstract over each package name in packages. 
/*
        let home = match env::home_dir() {
            Some(path) => Ok(path),
            None => Err("can't find home directory"),
        }?;

        println!("configuring fish-shell");
        Command::new("ln")
            .arg("-s")
            .arg("{}/workflow/fish", home) // the dir
            .arg("{}/.config/fish", home) // the symlink
            .output()?;
        println!("done!");

        println!("configuring alacritty");
        Command::new("ln")
            .arg("-s")
            .arg("{}/workflow/alacritty", home) // the dir
            .arg("{}/.config/alacritty", home) // the symlink
            .output()?;
        println!("done!");

        println!("configuring helix");
        Command::new("ln")
            .arg("-s")
            .arg("{}/workflow/helix", home) // the dir
            .arg("{}/.config/helix", home) // the symlink
            .output()?;
        println!("done");
    */
    Ok(())
}
