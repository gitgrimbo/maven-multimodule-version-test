REM  Take the new version from the command line
set VERSION=%1

pushd .
cd parent
call mvn versions:set -DnewVersion=%VERSION%
call mvn install
popd

pushd .
cd build
call mvn versions:set -DnewVersion=%VERSION%
REM  Use [version] notation to restrict the parentVersion to exact match
call mvn versions:update-parent -DallowSnapshots=true -DparentVersion=[%VERSION%]
call mvn install
popd
