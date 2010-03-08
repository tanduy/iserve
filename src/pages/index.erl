-module(index).
-export([main/2]).
-include("iserve.hrl").

main(#req{} = _Req, _Args) ->
    {200, [], <<"<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">
<html>
<head>
  <title>Welcome to iserve</title>
</head>
<body>
Go to:
<a href=\"/\">home</a>
</body>
</html>">>}.
