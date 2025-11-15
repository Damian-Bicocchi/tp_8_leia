:- initialization(main).

main :-
    consult('ejercicio2.pl'),

    writeln("===== Consulta 1: Personas disponibles para un rol en una localidad ====="),
    writeln("Personas para rol 'programador' en 'la_plata':"),
    (personas_para_rol_en_localidad(P, programador, la_plata),
        writeln(P),
        fail ; true),
    writeln("----------------------------------------"),

    writeln("===== Consulta 2: Personas disponibles para un rol ====="),
    writeln("Personas para rol 'diseniador':"),
    (personas_para_rol(P, diseniador),
        writeln(P),
        fail ; true),
    writeln("----------------------------------------"),

    writeln("===== Consulta 3: Roles que puede ocupar una persona ====="),
    writeln("Roles posibles para 'juan':"),
    (roles_para_persona(juan, R),
        writeln(R),
        fail ; true),
    writeln("----------------------------------------"),

    writeln("===== Consulta 4: ¿Es apta una persona para un rol? ====="),
    writeln("¿Es Ana apta para 'tester'?"),
    (es_apta(ana, tester) -> writeln(true) ; writeln(false)),
    writeln("----------------------------------------"),

    halt.
