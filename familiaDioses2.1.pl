%Hechos
esHombre(cronos).
esHombre(ares).
esHombre(poseidon).
esHombre(hefesto).
esHombre(zeus).
esHombre(baco).
esHombre(hermes).

esMujer(hera).
esMujer(afrodita).
esMujer(hipolita).
esMujer(atena).
esMujer(nera).

esDescendienteDirecto(hera,cronos).
esDescendienteDirecto(afrodita,ares).
esDescendienteDirecto(afrodita,hera).
esDescendienteDirecto(hefesto,ares).
esDescendienteDirecto(hefesto,hera).
esDescendienteDirecto(zeus,poseidon).
esDescendienteDirecto(zeus,afrodita).
esDescendienteDirecto(baco,afrodita).
esDescendienteDirecto(baco,hefesto).
esDescendienteDirecto(atena,afrodita).
esDescendienteDirecto(atena,hefesto).
esDescendienteDirecto(nera,hipolita).
esDescendienteDirecto(nera,zeus).
esDescendienteDirecto(hermes,atena).

%Reglas
esPadre(Padre,Hijo):-esHombre(Hijo),esDescendienteDirecto(Hijo,Padre).
esMadre(Madre,Hijo):-esMujer(Hijo),esDescendienteDirecto(Hijo,Madre).

esHijo(Hijo,Padre):-esHombre(Hijo),esDescendienteDirecto(Hijo,Padre).
esHija(Hijo,Madre):-esHombre(Hijo),esDescendienteDirecto(Hijo,Madre).

esHermano(HermanoA,HermanoB):-esHombre(HermanoA),esDescendienteDirecto(HermanoA,Padre),esDescendienteDirecto(HermanoB,Padre),HermanoA\==HermanoB.
esHermano(HermanoA,HermanoB):-esHombre(HermanoA),esDescendienteDirecto(HermanoA,Padre),esDescendienteDirecto(HermanoB,Padre).

esAbuelo(Abuelo,Nieto):-esHombre(Abuelo),esDescendienteDirecto(Nieto,Padre),esDescendienteDirecto(Padre,Abuelo).
esAbuela(Abuela,Nieto):-esMujer(Abuela),esDescendienteDirecto(Nieto,Madre),esDescendienteDirecto(Madre,Abuelo).

esAncestro(Ancestro,Persona):-esPadre(Ancestro,Persona);esMadre(Ancestro,Persona).
esAncestro(Ancestro,Persona):-esPadre(Ancestro,X),esMadre(X,Persona).