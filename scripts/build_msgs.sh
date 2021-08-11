cp -rf $1/deps/gen_source/* $1/deps/gen_deps/;
cd $1/deps/gen_deps/tb_msgs;
mkdir -p  $1/deps/gen_deps/tb_msgs/build;
cd $1/deps/gen_deps/tb_msgs/build;
cmake .. ;
make;
