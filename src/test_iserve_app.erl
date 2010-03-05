-module(test_iserve_app).
-export([do_get/2]).
-include("include/iserve.hrl").

do_get(#req{} = _Req, _Args) ->
    {200, [], <<"<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">
<html>
<head>
  <title>Welcome to iserve</title>
</head>
<body>
  Hello
</body>
</html>">>}.

