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


ensure_start(App)->
    case application:start(App) of
        ok->
            io:format("Application Started~n"),
            ok;
        {error, {already_started, App}} ->
            io:format("Application Already Started~n"),
            ok
    end.

start()->
    ok = ensure_start(crypto),
    ok = ensure_start(sasl),
    ok = ensure_start(ranch),
    ok = ensure_start(cowlib),
    ok = ensure_start(cowboy),
    ok = ensure_start(satomi),
    ok.



