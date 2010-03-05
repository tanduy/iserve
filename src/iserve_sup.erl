-module(iserve_sup).
-behaviour(supervisor).
-export([
	 start_link/0,
         init/1
        ]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    Port = get_config(),
    Server = {iserve_server, {iserve_server, start_link, [Port]},
	     permanent, 2000, worker, [iserve_server]},
    {ok, {{one_for_one, 10, 1}, [Server]}}.

get_config() ->
    case file:consult("priv/iserve.conf") of
        {ok, [{port, Port}]} -> Port;
        {_,_}                -> 8080
    end.
