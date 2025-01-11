# mmli

`mmli` is a bash script designed to create, mount, and unmount an encrypted ext4 filesystem. This script ensures that the filesystem is securely managed and only accessible by the intended user.

## Features

- Creates an encrypted ext4 filesystem if it does not exist.
- Mounts the encrypted filesystem to a specified directory.
- Unmounts the filesystem and closes the encryption when not in use.
- Ensures the filesystem is only accessible by the user who ran the script.

## Installation

To install `mmli`, run the following commands:

```sh
sudo ./install.sh
```

This will install the necessary packages and copy the `mmli` script to `/usr/local/bin` and make it executable.

## Usage

To use `mmli`, simply run the script with root privileges:

```sh
sudo mmli
```

- If the encrypted filesystem does not exist, it will be created.
- If the filesystem is already mounted, it will be unmounted and the encryption will be closed.
- If the filesystem is not mounted, it will be mounted to `/media/<username>/mmlmnt`.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss any changes.