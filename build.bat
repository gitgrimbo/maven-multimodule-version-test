pushd .
cd parent
call mvn install
popd

pushd .
cd build
call mvn install
popd
