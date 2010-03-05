{application, iserve, [
    {description, "Web Server"},
    {vsn, 1.0},
    {modules, [
        iserve_sup,
        iserve_app,
        iserve_server,
        iserve_socket
    ]},
    {registered, [	iserve_sup]},
    {applications, [kernel, stdlib]},
    {mod, {iserve_app, []}}
]}.
