use std::error::Error;
use clap::{Args, Subcommand};
use symlink::{remove_symlink_auto, symlink_auto};

#[derive(Args)]
pub struct Commands {
    #[command(subcommand)]
    pub command: SubCommand,
}

#[derive(Subcommand)]
pub enum SubCommand {
    Create(CreateArgs),
    Remove(RemoveArgs),
}

#[derive(Args)]
pub struct CreateArgs {
    source: String,
    destination: String,
}

pub fn create(args: CreateArgs) -> Result<(), Box<dyn Error>> {
    symlink_auto(args.source, args.destination)?;
    Ok(())
}

#[derive(Args)]
pub struct RemoveArgs {
    target: String
}

pub fn remove(args: RemoveArgs) -> Result<(), Box<dyn Error>> {
    remove_symlink_auto(args.target)?;
    Ok(())
}
