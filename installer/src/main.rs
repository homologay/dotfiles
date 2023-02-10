//! Installer, to be built and run after init.sh is run.
extern crate sudo;
use std::env;
use std::error::Error;
use std::io::stdin;
use std::process::Command;

fn main() -> Result<(), Box<dyn Error>> {
    sudo::escalate_if_needed()?;

    println!("Welcome. Please enter your name.");
    let mut name = String::new();
    stdin().read_line(&mut name)?;

    println!("Your email address, please.");
    let mut email = String::new();
    stdin().read_line(&mut email)?;
    println!("Excellent. Beginning installation.");

    println!("installing alacritty...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("alacritty")
        .output()?;
    println!("done!");

    println!("installing ripgrep...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("ripgrep")
        .output()?;
    println!("done!");

    println!("installing bat...");
    Command::new("xbps-install").arg("-y").arg("bat").output()?;
    println!("done!");

    println!("installing bottom...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("bottom")
        .output()?;
    println!("done!");

    println!("installing tealdeer...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("tealdeer")
        .output()?;
    println!("done!");

    println!("installing helix...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("helix")
        .output()?;
    println!("done!");

    println!("installing fish-shell...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("fish-shell")
        .output()?;
    println!("done!");

    println!("installing pandoc...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("pandoc")
        .output()?;
    println!("done!");

    println!("installing poppler-utils...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("poppler-utils")
        .output()?;
    println!("done!");

    println!("installing ffmpeg");
    Command::new("xbps-install")
        .arg("-y")
        .arg("ffmpeg")
        .output()?;
    println!("done!");

    println!("installing tesseract...");
    Command::new("xbps-install")
        .arg("-y")
        .arg("tesseract")
        .output()?;
    println!("done!");

    println!("installing ripgrep_all...");
    Command::new("cargo")
        .arg("install")
        .arg("--locked")
        .arg("ripgrep_all")
        .output()?;
    println!("done!");

    let home = match env::home_dir() {
        Some(path) => Ok(path),
        None => Err(env::Error::from("can't find home directory")),
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

    Ok(())
}
