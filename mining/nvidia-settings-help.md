stef2001@rig01-ubuntu:~$ nvidia-settings -h

nvidia-settings:  version 510.47.03
  The NVIDIA Settings tool.

  This program is used to configure the NVIDIA Linux graphics driver.
  For more detail, please see the nvidia-settings(1) man page.


nvidia-settings [options]

  -v, --version
      Print the nvidia-settings version and exit.

  -h, --help
      Print usage information and exit.

  --config=CONFIG
      Use the configuration file CONFIG rather than the default ~/.nvidia-settings-rc

  -c CTRL-DISPLAY, --ctrl-display=CTRL-DISPLAY
      Control the specified X display.  If this option is not given, then nvidia-settings will control the display specified by '--
      display'; if that is not given, then the $DISPLAY environment variable is used.

  -l, --load-config-only
      Load the configuration file, send the values specified therein to the X server, and exit.  This mode of operation is useful t
      o place in your xinitrc file, for example.

  -n, --no-config
      Do not load the configuration file.  This mode of operation is useful if nvidia-settings has difficulties starting due to pro
      blems with applying settings in the configuration file.

  -r, --rewrite-config-file
      Write the X server configuration to the configuration file, and exit, without starting the graphical user interface.  See EXA
      MPLES section.

  -V VERBOSE, --verbose=VERBOSE
      Controls how much information is printed.  Valid values are 'none' (do not print status messages), 'errors' (print error mess
      ages), 'deprecations' (print error and deprecation messages), 'warnings' (print error, deprecation, and warning messages), an
      d 'all' (print error, deprecation, warning and other informational messages).  By default, 'deprecations' is set.

  -a ASSIGN, --assign=ASSIGN
      The ASSIGN argument to the '--assign' command line option is of the form:
      
        {DISPLAY}/{attribute name}[{display devices}]={value}
      
      This assigns the attribute {attribute name} to the value {value} on the X Display {DISPLAY}.  {DISPLAY} follows the usual {ho
      st}:{display}.{screen} syntax of the DISPLAY environment variable and is optional; when it is not specified, then it is impli
      ed following the same rule as the --ctrl-display option.  If the X screen is not specified, then the assignment is made to al
      l X screens.  Note that the '/' is only required when {DISPLAY} is present.
      
      {DISPLAY} can additionally include a target specification to direct an assignment to something other than an X screen.  A tar
      get specification is contained within brackets and consists of a target type name, a colon, and the target id.  The target ty
      pe name can be one of "screen", "gpu", "framelock", "fan", "thermalsensor", "svp", or "dpy"; the target id is the index into 
      the list of targets (for that target type).  The target specification can be used in {DISPLAY} wherever an X screen can be us
      ed, following the syntax {host}:{display}[{target_type}:{target_id}].  See the output of
      
        nvidia-settings -q all 
      
      for information on which target types can be used with which attributes.  See the output of
      
         nvidia-settings -q screens -q gpus -q framelocks -q fans -q thermalsensors -q svps -q dpys 
      
      for lists of targets for each target type.
      
      The [{display devices}] portion is also optional; if it is not specified, then the attribute is assigned to all display devic
      es.
      
      Some examples:
      
        -a FSAA=5
        -a localhost:0.0/DigitalVibrance[CRT-0]=0
        --assign="SyncToVBlank=1"
        -a [gpu:0]/DigitalVibrance[DFP-1]=63

  -q QUERY, --query=QUERY
      The QUERY argument to the '--query' command line option is of the form:
      
        {DISPLAY}/{attribute name}[{display devices}]
      
      This queries the current value of the attribute {attribute name} on the X Display {DISPLAY}.  The syntax is the same as that 
      for the '--assign' option, without '={value}'; specify '-q screens', '-q gpus', '-q framelocks', '-q fans', '-q thermalsensor
      s', '-q svps', or '-q dpys' to query a list of X screens, GPUs, Frame Lock devices, Visual Computing Systems, Devices, Fans, 
      Thermal Sensors, 3D Vision Pro Transceivers, or Display Devices, respectively, that are present on the X Display {DISPLAY}.  
      Specify '-q all' to query all attributes.

  -t, --terse
      When querying attribute values with the '--query' command line option, only print the current value, rather than the more ver
      bose description of the attribute, its valid values, and its current value.

  -d, --display-device-string
      When printing attribute values in response to the '--query' option, if the attribute value is a display device mask, print th
      e value as a list of display devices (e.g., "CRT-0, DFP-0"), rather than a hexadecimal bit mask (e.g., 0x00010001).

  -g, --glxinfo
      Print GLX Information for the X display and exit.

  -E, --eglinfo
      Print EGL Information for the X display and exit.

  -e DESCRIBE, --describe=DESCRIBE
      Prints information about a particular attribute.  Specify 'all' to list the descriptions of all attributes.  Specify 'list' t
      o list the attribute names without a descriptions.

  -p PAGE, --page=PAGE
      The PAGE argument to the '--page' commandline option selects a particular page in the nvidia-settings user interface to displ
      ay upon starting nvidia-settings.  Valid values are the page names in the tree view on the left side of the nvidia-settings u
      ser interface; e.g.,
      
        --page="X Screen 0"
      
      Because some page names are not unique (e.g., a "PowerMizer" page is present under each GPU), the page name can optionally be
      prepended with the name of the parent X Screen or GPU page, followed by a comma.  E.g.,
      
        --page="GPU 0 - (Quadro 6000), PowerMizer"
      
      The first page with a name matching the PAGE argument will be used.  By default, the "System Information" page is displayed.

  -L, --list-targets-only
      When performing an attribute query (from the '--query' command line option) or an attribute assignment (from the '--assign' c
      ommand line option or when loading an ~/.nvidia-settings-rc file), nvidia-settings identifies one or more targets on which to
      query/assign the attribute.
      
      The '--list-targets-only' option will cause nvidia-settings to list the targets on which the query/assign operation would hav
      e been performed, without actually performing the operation(s), and exit.

  -w, --write-config, --no-write-config
      Save the configuration file on exit (enabled by default).

  -i, --use-gtk2
      Force nvidia-settings to use the GTK+ 2 library for the graphical user interface if a user interface is required. This option
      is only available on systems where nvidia-settings supports both the GTK+ 2 and GTK+ 3 user interfaces.

  -I GTK-LIBRARY, --gtk-library=GTK-LIBRARY
      Specify the graphical user interface library to use if a nvidia-settings user interface is required. This value may be the ex
      act location of the library or it may be the directory containing the appropriately named library. If this is the exact locat
      ion, the 'use-gtk2' option is ignored.

stef2001@rig01-ubuntu:~$ ^C
stef2001@rig01-ubuntu:~$ 