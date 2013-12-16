-module(satomi_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    Dispatch = cowboy_router:compile(
                 [{'_', [{"/js/[...]", toppage_handler, []},
                         {"/[...]", cowboy_static, {priv_dir, satomi, "",
				[{mimetypes, cow_mimetypes, all}]}}
			]}
                 ]),
    {ok, _} = cowboy:start_http(http, 100, 
                                [{port, 8080}], 
                                [{env, [{dispatch, Dispatch}]}]),
    satomi_sup:start_link().

stop(_State) ->
    ok.
