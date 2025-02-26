use std::error::Error;

use clap::{Parser, Subcommand};

mod commands;

#[derive(Parser)]
#[command(version)] 
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    Cpath,
    Symlink(commands::symlinks::Commands),
}

fn main() -> Result<(), Box<dyn Error>> {
    let cli = Cli::parse();

    match cli.command {
        Commands::Cpath => {
            commands::cpath::exec()?;
        }
        Commands::Symlink(subcommand) => {
            match subcommand.command {
                commands::symlinks::SubCommand::Create(args) => {
                    commands::symlinks::create(args)?;
                }
                commands::symlinks::SubCommand::Remove(args) => {
                    commands::symlinks::remove(args)?;
                }
            }
        }
    }

    Ok(())
}
