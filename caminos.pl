%1
esDepartamento(pando).
esDepartamento(laPaz).
esDepartamento(santaCruz).
esDepartamento(cochabamba).
esDepartamento(chuquisaca).
esDepartamento(tarija).
esDepartamento(oruro).
esDepartamento(potosi).
esDepartamento(beni).

%2
esCiudad(cobija).
esCiudad(riberalta).
esCiudad(trinidad).
esCiudad(apolo).
esCiudad(laPaz).
esCiudad(cochabamba).
esCiudad(santaCruz).
esCiudad(sanJoseDeChiquitos).
esCiudad(puertoSuarez).
esCiudad(sucre).
esCiudad(oruro).
esCiudad(potosi).
esCiudad(tarija).
esCiudad(villaMontes).
esCiudad(uyuni).

%3
esCapital(cobija,pando).
esCapital(trinidad,beni).
esCapital(laPaz,laPaz).
esCapital(santaCruz,santaCruz).
esCapital(cochabamba,cochabamba).
esCapital(sucre,chuquisaca).
esCapital(tarija,tarija).
esCapital(oruro,oruro).
esCapital(potosi,potosi).

%4
esCapitalPais(sucre,bolivia).

%5
estaEnDepartamento(Ciudad,Departamento):-esCiudad(Ciudad),esDepartamento(Departamento),esCapital(Ciudad,Departamento).

%6
caminoDirectoC(riberalta,cobija).
caminoDirectoC(cobija,apolo).
caminoDirectoC(apolo,cobija).
caminoDirectoC(apolo,laPaz).
caminoDirectoC(laPaz,apolo).
caminoDirectoC(laPaz,trinidad).
caminoDirectoC(laPaz,oruro).
caminoDirectoC(oruro,laPaz).
caminoDirectoC(laPaz,cochabamba).
caminoDirectoC(cochabamba,laPaz).
caminoDirectoC(oruro,uyuni).
caminoDirectoC(oruro,sucre).
caminoDirectoC(sucre,cochabamba).
caminoDirectoC(cochabamba,sucre).
caminoDirectoC(tarija,sucre).
caminoDirectoC(tarija,villaMontes).
caminoDirectoC(villaMontes,tarija).
caminoDirectoC(tarija,potosi).
caminoDirectoC(potosi,tarija).
caminoDirectoC(sucre,santaCruz).
caminoDirectoC(santaCruz,cochabamba).
caminoDirectoC(santaCruz,trinidad).
caminoDirectoC(santaCruz,sanJoseDeChiquitos).
caminoDirectoC(sanJoseDeChiquitos,puertoSuarez).
caminoDirectoC(puertoSuarez,sanJoseDeChiquitos).
caminoDirectoCCiudad1(Ciudad1,Ciudad2):-esCiudad(Ciudad1),esCiudad(Ciudad2),caminoDirectoC(Ciudad1,Ciudad2),Ciudad1\==Ciudad2.
caminoDirectoCCiudad2(Ciudad2,Ciudad1):-esCiudad(Ciudad1),esCiudad(Ciudad2),caminoDirectoC(Ciudad2,Ciudad1),Ciudad1\==Ciudad2.

%7
caminoDirectoCDepartamento(Departamento1,Departamento2):-esDepartamento(Departamento1),esDepartamento(Departamento2),esCiudadDe(esCiudad,Departamento1),esCiudadDe(esCiudad,Departamento2),Departamento1\==Departamento2.

%8
viajeCiudades(Ciudad,Ciudades):-esCiudad(Ciudad),esCiudad(Ciudades),caminoDirectoC(Ciudad2,Ciudad1),Ciudad1\==Ciudad2.

%9
caminoDirectoD(laPaz,cobija).
caminoDirectoD(cobija,laPaz).
caminoDirectoD(laPaz,beni).
caminoDirectoD(laPaz,cochabamba).
caminoDirectoD(laPaz,oruro).
caminoDirectoD(oruro,potosi).
caminoDirectoD(potosi,tarija).
caminoDirectoD(tarija,potosi).
caminoDirectoD(tarija,chuquisaca).
caminoDirectoD(oruro,chuquisaca).
caminoDirectoD(chuquisaca,santaCruz).
caminoDirectoD(santaCruz,trinidad).
caminoDirectoD(santaCruz,cochabamba).
caminoDirectoD(cochabamba,laPaz).
caminoDirectoD(chuquisaca,cochabamba).
caminoDirectoD(cochabamba,chuquisaca).
caminoDirectoD(laPaz,cobija).
viajeDepartamentos(Departamento,Departamentos):-esDepartamento(Departamento),esDepartamento(Departamentos),caminoDirectoD(Departamento,Departamentos),caminoDirectoD(Departamentos,Departamento).

%10
llegar(Ciudad,esCapitalPais):-esCiudad(Ciudad),caminoDirectoC(Ciudad,esCapitalPais).

%11
capital(Capital, Departamento):-esCapital(Capital, Departamento).