% Hechos de vacunas %
edad_minima(spikevax_bivariante, 0.5).
edad_minima(spikevax_monovariante, 0.5).
edad_minima(comirnaty, 12).

contraindicacion(spikevax_bivariante, anafilaxia).
contraindicacion(spikevax_bivariante, reaccion_alergica_grave).
contraindicacion(spikevax_monovariante, anafilaxia).
contraindicacion(spikevax_monovariante, reaccion_alergica_grave).
contraindicacion(comirnaty, anafilaxia).
contraindicacion(comirnaty, reaccion_alergica_grave).

% Personas %
tiene_edad(claudia, 0.5).
tiene_edad(hernan, 9).
tiene_edad(clara, 12).
tiene_edad(joaquin, 18).

tiene_indicacion(claudia, nada).
tiene_indicacion(clara, nada).
tiene_indicacion(hernan, anafilaxia).
tiene_indicacion(joaquin, reaccion_alergica_grave).


% Reglas de vacunas %
tiene_edad_recomendada(EdadMinima, Persona) :- 
    tiene_edad(Persona, EdadPersona),
    EdadPersona >= EdadMinima.

inapto_indicacion(Persona, Vacuna) :- 
    contraindicacion(Vacuna, Contraindicacion),
    tiene_indicacion(Persona, Contraindicacion).

puede_vacunarse(Persona, Vacuna) :- 
    edad_minima(Vacuna, EdadMinima),
    tiene_edad_recomendada(EdadMinima, Persona),
    \+ inapto_indicacion(Persona, Vacuna).


