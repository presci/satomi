%%%-------------------------------------------------------------------
%%% @author presci
%%% @copyright (C) 2013, presci
%%% @doc
%%%
%%% @end
%%% Created : 11 Jul 2013 by presci
%%%-------------------------------------------------------------------
-module(satomi).

-export([start/0]).

start()->
    ok = application:start(crypto),
    ok = application:start(ranch),
    ok = application:start(cowboy),
    ok = application:start(satomi).

