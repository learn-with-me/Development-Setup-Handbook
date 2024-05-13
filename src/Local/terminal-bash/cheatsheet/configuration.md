# Cheatsheet - System Configuration

## Touch ID for sudo password

```sh
# Use touch id as sudo password
$ sudo nano /etc/pam.d/sudo

# Add line below first comment
auth sufficient pam_tid.so
```

## Screen Capture

```sh
# Change default screenshot file name
$ defaults write com.apple.screencapture name <name>

# Change default screenshot file type
$ defaults write com.apple.screencapture type jpg

# Change default screenshot file location
$ defaults write com.apple.screencapture location ~/Desktop/screenshots
```

## Download History

```sh
# Mac keeps history of everything we download
# View download history
$ sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'

# Clear download history
$ sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'
```

## Other

```sh
# Disable gatekeeper
# Gatekeeper enforces code signing and verifies downloaded applications before allowing them to run
$ disable gatekeeper

# Install the apps you want to install, without being blocked by the gatekeeper
$ sudo spctl --master-disable

```
