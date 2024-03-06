ensena(juan,'Base de Datos II').
ensena(maria,'Base de Datos II').
ensena(maria,'Redes I').
ensena(maria,'Inteligencia Artificial').
ensena(estela,'Redes I').
ensena(estela,'Inteligencia Artificial').

asisteA(arturito,'Base de Datos II').
asisteA(arturito,'Redes I').
asisteA(andres,'Redes I').
asisteA(andres,'Inteligencia Artificial').
asisteA(jose,'Base de Datos II').
asisteA(jose,'Redes I').
asisteA(jose,'Inteligencia Artificial').
asisteA(karina,'Redes I').
asisteA(karina,'Inteligencia Artificial').
asisteA(mariel,'Inteligencia Artificial').

%reglas
esDocenteDe(Docente,Estudiante):-ensena(Docente,Materia),asisteA(Estudiante,Materia).
esCompaniero(EstudianteA,EstudianteB):-asisteA(EstudianteA,Materia),asisteA(EstudianteB,Materia).