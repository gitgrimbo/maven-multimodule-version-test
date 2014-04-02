A simple repo to test Maven multi-module project versioning in the situation where your parent POM and multi-module POM are not one and the same.

The `parent` project is the parent of `child1` and `child2`.

The `build` project is a multi-module project that has `child1` and `child2` as modules.

## Using the scripts

Steps to take:

1. Use `build.bat` to install version `1-SNAPSHOT` of all the projects to the local repo.
2. Use `update-versions.bat` to update the project versions. E.g. `update-versions 1` to move from `1-SNAPSHOT` to `1`.

### Sample output - `build.bat`

This output simply shows the installation of version `1-SNAPSHOT` of the 4 projects; `parent`, `build`, `child` and `child2`.

````
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building parent 1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ parent ---
[INFO] Installing d:\dev\git_repos\maven-multimodule-version-test\parent\pom.xml to c:\.m3\repository\temp\parent\1-SNAPSHOT\parent-1-SNAPSHOT.pom
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 0.446s
[INFO] Finished at: Wed Apr 02 22:38:06 BST 2014
[INFO] Final Memory: 5M/116M
[INFO] ------------------------------------------------------------------------
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO]
[INFO] parent
[INFO] child1
[INFO] child2
[INFO] build
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building parent 1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ parent ---
[INFO] Installing D:\dev\git_repos\maven-multimodule-version-test\parent\pom.xml to c:\.m3\repository\temp\parent\1-SNAPSHOT\parent-1-SNAPSHOT.pom
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building child1 1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ child1 ---
[INFO] Installing D:\dev\git_repos\maven-multimodule-version-test\child1\pom.xml to c:\.m3\repository\temp\child1\1-SNAPSHOT\child1-1-SNAPSHOT.pom
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building child2 1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ child2 ---
[INFO] Installing D:\dev\git_repos\maven-multimodule-version-test\child2\pom.xml to c:\.m3\repository\temp\child2\1-SNAPSHOT\child2-1-SNAPSHOT.pom
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building build 1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ build ---
[INFO] Installing d:\dev\git_repos\maven-multimodule-version-test\build\pom.xml to c:\.m3\repository\temp\build\1-SNAPSHOT\build-1-SNAPSHOT.pom
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] parent ............................................ SUCCESS [0.320s]
[INFO] child1 ............................................ SUCCESS [0.012s]
[INFO] child2 ............................................ SUCCESS [0.012s]
[INFO] build ............................................. SUCCESS [0.010s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 0.487s
[INFO] Finished at: Wed Apr 02 22:38:08 BST 2014
[INFO] Final Memory: 7M/116M
[INFO] ------------------------------------------------------------------------
````

### Sample output - `update-versions.bat 1`

Pass `1` to `update-versions.bat` to promote each project to version `1`.

````

d:\dev\git_repos\maven-multimodule-version-test>update-versions.bat 1

[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building parent 1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- versions-maven-plugin:2.1:set (default-cli) @ parent ---
[INFO] Searching for local aggregator root...
[INFO] Local aggregation root: d:\dev\git_repos\maven-multimodule-version-test\parent
[INFO] Processing temp:parent
[INFO]     Updating project temp:parent
[INFO]         from version 1-SNAPSHOT to 1
Props: {project.version=1, project.artifactId=parent, project.groupId=temp}
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 1.619s
[INFO] Finished at: Wed Apr 02 22:55:00 BST 2014
[INFO] Final Memory: 10M/164M
[INFO] ------------------------------------------------------------------------
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building parent 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ parent ---
[INFO] Installing d:\dev\git_repos\maven-multimodule-version-test\parent\pom.xml to c:\.m3\repository\temp\parent\1\parent-1.pom
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 0.433s
[INFO] Finished at: Wed Apr 02 22:55:02 BST 2014
[INFO] Final Memory: 7M/116M
[INFO] ------------------------------------------------------------------------
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO]
[INFO] parent
[INFO] child1
[INFO] child2
[INFO] build
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building build 1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- versions-maven-plugin:2.1:set (default-cli) @ build ---
[INFO] Searching for local aggregator root...
[INFO] Local aggregation root: d:\dev\git_repos\maven-multimodule-version-test\build
[INFO] Processing temp:build
[INFO]     Updating project temp:build
[INFO]         from version 1-SNAPSHOT to 1
Props: {project.version=1, project.artifactId=build, project.groupId=temp}
Props: {project.version=1, project.artifactId=build, project.groupId=temp}
Props: {project.version=1, project.artifactId=build, project.groupId=temp}
[INFO]
Props: {project.version=1, project.artifactId=parent, project.groupId=temp}
Props: {project.version=1, project.artifactId=parent, project.groupId=temp}
Props: {project.version=1, project.artifactId=parent, project.groupId=temp}
Props: {project.version=1-SNAPSHOT, project.parent.version=1-SNAPSHOT, project.parent.groupId=temp, project.artifactId=child1, project.groupId=temp, project.parent.artifactId=parent}
[INFO] Processing temp:child1
[INFO]     Updating project temp:child1
[INFO]         from version 1-SNAPSHOT to 1
Props: {project.version=1, project.parent.version=1-SNAPSHOT, project.parent.groupId=temp, project.artifactId=child1, project.groupId=temp, project.parent.artifactId=parent}
Props: {project.version=1, project.parent.version=1-SNAPSHOT, project.parent.groupId=temp, project.artifactId=child1, project.groupId=temp, project.parent.artifactId=parent}
[INFO]
Props: {project.version=1-SNAPSHOT, project.parent.version=1-SNAPSHOT, project.parent.groupId=temp, project.artifactId=child2, project.groupId=temp, project.parent.artifactId=parent}
Props: {project.version=1-SNAPSHOT, project.parent.version=1-SNAPSHOT, project.parent.groupId=temp, project.artifactId=child2, project.groupId=temp, project.parent.artifactId=parent}
[INFO] Processing temp:child2
[INFO]     Updating dependency temp:child1
[INFO]         from version 1-SNAPSHOT to 1
[INFO]     Updating project temp:child2
[INFO]         from version 1-SNAPSHOT to 1
Props: {project.version=1, project.parent.version=1-SNAPSHOT, project.parent.groupId=temp, project.artifactId=child2, project.groupId=temp, project.parent.artifactId=parent}
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] parent ............................................ SKIPPED
[INFO] child1 ............................................ SKIPPED
[INFO] child2 ............................................ SKIPPED
[INFO] build ............................................. SUCCESS [1.234s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 1.753s
[INFO] Finished at: Wed Apr 02 22:55:05 BST 2014
[INFO] Final Memory: 12M/168M
[INFO] ------------------------------------------------------------------------
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO]
[INFO] parent
[INFO] child1
[INFO] child2
[INFO] build
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building parent 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- versions-maven-plugin:2.1:update-parent (default-cli) @ parent ---
[INFO] Project does not have a parent
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building child1 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- versions-maven-plugin:2.1:update-parent (default-cli) @ child1 ---
[INFO] Updating parent from 1-SNAPSHOT to 1
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building child2 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- versions-maven-plugin:2.1:update-parent (default-cli) @ child2 ---
[INFO] Updating parent from 1-SNAPSHOT to 1
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building build 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- versions-maven-plugin:2.1:update-parent (default-cli) @ build ---
[INFO] Project does not have a parent
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] parent ............................................ SUCCESS [1.105s]
[INFO] child1 ............................................ SUCCESS [0.036s]
[INFO] child2 ............................................ SUCCESS [0.011s]
[INFO] build ............................................. SUCCESS [0.005s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 1.654s
[INFO] Finished at: Wed Apr 02 22:55:09 BST 2014
[INFO] Final Memory: 12M/164M
[INFO] ------------------------------------------------------------------------
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO]
[INFO] parent
[INFO] child1
[INFO] child2
[INFO] build
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building parent 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ parent ---
[INFO] Installing D:\dev\git_repos\maven-multimodule-version-test\parent\pom.xml to c:\.m3\repository\temp\parent\1\parent-1.pom
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building child1 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ child1 ---
[INFO] Installing D:\dev\git_repos\maven-multimodule-version-test\child1\pom.xml to c:\.m3\repository\temp\child1\1\child1-1.pom
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building child2 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ child2 ---
[INFO] Installing D:\dev\git_repos\maven-multimodule-version-test\child2\pom.xml to c:\.m3\repository\temp\child2\1\child2-1.pom
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building build 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-install-plugin:2.4:install (default-install) @ build ---
[INFO] Installing d:\dev\git_repos\maven-multimodule-version-test\build\pom.xml to c:\.m3\repository\temp\build\1\build-1.pom
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] parent ............................................ SUCCESS [0.333s]
[INFO] child1 ............................................ SUCCESS [0.010s]
[INFO] child2 ............................................ SUCCESS [0.010s]
[INFO] build ............................................. SUCCESS [0.009s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 0.505s
[INFO] Finished at: Wed Apr 02 22:55:11 BST 2014
[INFO] Final Memory: 5M/116M
[INFO] ------------------------------------------------------------------------
````

#### Diff after running `update-versions.bat 1`

````Diff
diff --git a/build/pom.xml b/build/pom.xml
index 98d08c4..9ae7419 100644
--- a/build/pom.xml
+++ b/build/pom.xml
@@ -7,7 +7,7 @@

     <groupId>temp</groupId>
     <artifactId>build</artifactId>
-    <version>1-SNAPSHOT</version>
+    <version>1</version>
     <packaging>pom</packaging>

     <modules>
diff --git a/child1/pom.xml b/child1/pom.xml
index bcc95da..28f49ce 100644
--- a/child1/pom.xml
+++ b/child1/pom.xml
@@ -7,13 +7,13 @@

     <groupId>temp</groupId>
     <artifactId>child1</artifactId>
-    <version>1-SNAPSHOT</version>
+    <version>1</version>
     <packaging>pom</packaging>

     <parent>
         <groupId>temp</groupId>
         <artifactId>parent</artifactId>
-        <version>1-SNAPSHOT</version>
+        <version>1</version>
     </parent>

 </project>
diff --git a/child2/pom.xml b/child2/pom.xml
index 91f6572..c014dc2 100644
--- a/child2/pom.xml
+++ b/child2/pom.xml
@@ -7,20 +7,20 @@

     <groupId>temp</groupId>
     <artifactId>child2</artifactId>
-    <version>1-SNAPSHOT</version>
+    <version>1</version>
     <packaging>pom</packaging>

     <parent>
         <groupId>temp</groupId>
         <artifactId>parent</artifactId>
-        <version>1-SNAPSHOT</version>
+        <version>1</version>
     </parent>

     <dependencies>
         <dependency>
             <groupId>temp</groupId>
             <artifactId>child1</artifactId>
-            <version>1-SNAPSHOT</version>
+            <version>1</version>
         </dependency>
     </dependencies>

diff --git a/parent/pom.xml b/parent/pom.xml
index 6f9f3b2..57d813a 100644
--- a/parent/pom.xml
+++ b/parent/pom.xml
@@ -7,7 +7,7 @@

     <groupId>temp</groupId>
     <artifactId>parent</artifactId>
-    <version>1-SNAPSHOT</version>
+    <version>1</version>
     <packaging>pom</packaging>

     <build>
````
