## Mounting images of a virtual machine *JAVA*, which contains the basic classes for the work of the project

### If JDK is present on the operating system:
- Mounting for Windows in folder - `.tmp'` :

```bash
jlink --add-modules=java.base --compress=2 --no-header-files --no-man-pages --output .tmp/jre11-windows 
```

#### If downloaded archive is present  at the folder - `..\Download\openJDKL_linux_mac\..` on the operating system:
- Mounting for Linux in folder - `.tmp'` :
```bash
jlink --module-path C:\Users\bassa\Downloads\openJDKl_linux_mac\jdk-11.0.2-linux\jmods --add-modules=java.base --compress=2 --no-header-files --no-man-pages --output .tmp/jre11-linux  
```

- Mounting for Linux in folder - `.tmp'` :
```bash
jlink --module-path C:\Users\bassa\Downloads\openJDKl_linux_mac\jdk-11.0.2.jdk-mac\jmods --add-modules=java.base --compress=2 --no-header-files --no-man-pages --output .tmp/jre11-macos
```