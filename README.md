# How to run inFusion on Linux & Mac

## Installation & Running summary


 - Clone the repository or download its archive.
 - Depending on your OS (Mac or Linux), run the corresponding `infusion_{OS}.sh` in your
terminal.
- Once the window is open, click on the open button in the top right corner to open your project folder.


## Detailed work report

### Identifying the reason it doesn’t work out of the box
When trying to run the original `infusion.sh` script, depending on your current installation, the GUI of inFusion might appear but for me, the file explorer didn’t work. After looking into it, I realized it used the Java version specified in your path. The software being nearly 10 years old, I figured some features became deprecated since then. Knowing inFusion worked on Windows computers, I looked at the difference between `infusion.sh` and `infusion.bat`. The windows script uses a local Java JRE distributed inside the inFusion directory.

### Finding the appropriate Java version

The only information provided about the windows Java JRE that allowed inFusion to work was the folder name `jre1502`. Despite looking for archived versions of Java, this didn’t prove to be a successful lead. I used the MD5 hash of the `java.exe` executable to find the corresponding
version.

|Version number|MD5 Hash                        |Architecture| Size      |
|--------------|--------------------------------|------------|-----------|
|5.0.20.9      |16428f4e2b393ba97f62a9ae6866e795|32bit       |  48K      |

> source: https://www.pconlife.com/viewfileinfo/java-exe/

This version of Java is 20 years old, so I didn’t manage to find it for Linux and Mac but with Java 7 I got it to work. I’ve put the Java 7 JRE’s for Linux and Mac in the inFusion directory and modified the .sh scripts to use them.
