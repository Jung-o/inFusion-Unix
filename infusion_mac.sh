LOCALCLASSPATH=./jre1502/lib/rt.jar:./jre1502/lib/i386:./res/:./lib/liquidlnf.jar:./lib/intellij.jar:./lib/dude.jar:./lib/jgraph.jar:./lib/jgraphmicropad.jar:./lib/java2html.jar:./lib/recoder.jar:./lib/org-openide-awt.jar:./lib/org-openide-util.jar:./lib/swing-layout-1.0.3.jar:
echo "Starting inFusion..."

JAVA_JRE=jre-7u80-mac-x64			# Times font missing

JAVA_EXEC=${JAVA_JRE}/bin/java
${JAVA_EXEC} -Xms256m -Xmx1536m -Dsun.java2d.noddraw=true -classpath ${LOCALCLASSPATH} com.intooitus.infusion.gui.InfusionGUIMain $1 $2 $3
