PROJECT = satomi


DEPS = cowboy bullet
dep_cowboy = https://github.com/extend/cowboy.git master
dep_bullet = https://github.com/extend/bullet.git master


TEST_DEPS = ct_helper
dep_ct_helper = https://github.com/extend/ct_helper.git master
include erlang.mk