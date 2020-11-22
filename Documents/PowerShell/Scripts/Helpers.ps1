# Editing Profile and reload it
function Edit-Profile {
    code --wait $profile
    . $profile
}

# Refresh Path env
function Refresh-PathEnv {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}
