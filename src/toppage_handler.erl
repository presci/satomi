-module(toppage_handler).
%%=====================
%% The handler is taken from chat tutorial on github
%%=====================
-export([init/3, handle/2, terminate/3]).

init(_Transport, Req, [])->
    {ok, Req, undefined}.
handle(Req, State)->
    Html = get_html(),
    {ok, Req2}=cowboy_req:reply (200, 
                                [{<<"content-type">>, <<"text/html">>}],
                                 Html, Req),
    {ok, Req2, State}.

terminate(_Reqson, _Req, _state)->
    ok.


%% private function
get_html()->
    {ok, Cwd}=file:get_cwd(),
    Filename = filename:join([Cwd, "priv", "index.html"]),
    {ok, Binary}= file:read_file(Filename),
    Binary.

