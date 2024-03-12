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
esPadreR(Padre,Hijo):-esPadre(Hijo),esPadre(Padre,Hijo).

esPadre(cronos,hera).
esPadre(ares,afrodita).
esPadre(ares,hefesto).
esPadre(poseidon,zeus).
esPadre(hefesto,atena).
esPadre(hefesto,baco).
esPadre(zeus,nera).

esMadre(hera,afrodita).
esMadre(hera,hefesto).
esMadre(afrodita,zeus).
esMadre(afrodita,baco).
esMadre(afrodita,atena).
esMadre(atena,hermes).
esMadre(hipolita,nera).

esHijo(hefesto,ares).
esHijo(hefesto,hera).
esHijo(zeus,poseidon).
esHijo(zeus,afrodita).
esHijo(baco,afrodita).
esHijo(baco,hefesto).
esHijo(hermes,atena).

esHija(hera,cronos).
esHija(afrodita,ares).
esHija(afrodita,hera).
esHija(atena,afrodita).
esHija(atena,hefesto).
esHija(nera,hipolita).
esHija(nera,zeus).

esHermano(hefesto,afrodita).
esHermano(baco, atena).
esHermano(zeus,baco).
esHermano(zeus,atena).

esHermana(afrodita,hefesto).
esHermana(atena,baco).
esHermana(atena,zeus).

esAbuelo(cronos,afrodita).
esAbuelo(cronos,hefesto).
esAbuelo(ares,zeus).
esAbuelo(ares,baco).
esAbuelo(ares,atena).
esAbuelo(poseidon,nera).
esAbuelo(hefesto,hermes).

esAbuela(hera, zeus).
esAbuela(hera, baco).
esAbuela(hera, atena).
esAbuela(afrodita, nera).
esAbuela(afrodita, hermes).