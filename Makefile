PROJECT = satomi


DEPS = cowboy bullet
dep_cowboy = https://github.com/extend/cowboy.git 0.9.0
dep_bullet = https://github.com/extend/bullet.git 0.4.1


TEST_DEPS = ct_helper
dep_ct_helper = https://github.com/extend/ct_helper.git master
include erlang.mk