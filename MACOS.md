The distribution/macos/Digital.sh script can be used to run
the compiled JAR application on macOS with appropriate
parameters, such as a dock icon and quite on window close.

The application has to be built first with `mvn install`.

It can also be used to create a ".app" application that
can be placed in `~/Applications` for easy access to Digital.
With Automator, create a new "Application" project, and add
the action "Run Shell Script" with this command:

```bash
cd <PATH_TO_DIGITAL_FOLDER>/distribution/macos && ./Digital.sh &> /dev/null &
```

The `&>` redirects `stdout` and `stderr` to `/dev/null`, which prevents
`ScriptMonitor`, a macOS daemon, from putting up a gear icon in the menu bar
while the script is open (i.e., while Digital is running).


