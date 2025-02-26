use std::error::Error;
use cli_clipboard;

pub fn exec() -> Result<(), Box<dyn Error>> {
    let path = std::env::current_dir()?;

    let path_string = path.to_str();
    match path_string {
        Some(r) => cli_clipboard::set_contents(r.to_owned())?,
        None => return Result::Err("Could not convert path to string;".into())
    };

    Ok(())
}
