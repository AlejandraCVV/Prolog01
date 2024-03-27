esCategoria(producto).
esCategoria(electrodomestico).
esCategoria(entretenimiento).
esCategoria(computadora).
esCategoria(batidora).
esCategoria(lavadora).
esCategoria(parlantes).
esCategoria(consolas).
esCategoria(laptop).
esCategoria(escritorio).

esCliente(maria).
esCliente(juan).
esCliente(jeremias).

esProducto('LG-510').
esProducto('Samsung B125').
esProducto('LG Batimix').
esProducto('Samsung L 200').
esProducto('Bose').
esProducto('LG').
esProducto('XBox 360').
esProducto('XBox one').
esProducto('PS 2').
esProducto('PS 3').
esProducto('Omen 560').
esProducto('Pavillon 15a').
esProducto('Destruinator 500').

enCategoria('LG_510',batidora).
enCategoria('Samsung B125',batidora).
enCategoria(batidora,electrodomestico).
enCategoria('LG Batimix',lavadora).
enCategoria('Samsung L 200',lavadora).
enCategoria(lavadora,electrodomestico).
enCategoria(electrodomestico,producto).

enCategoria('Bose',parlantes).
enCategoria('LG',parlantes).
enCategoria(parlantes,entretenimiento).
enCategoria('XBox 360',xBox).
enCategoria('XBox one',xBox).
enCategoria(xBox,consolas).
enCategoria('PS 2',playStation).
enCategoria('PS 3',playStation).
enCategoria(playStation,consolas).
enCategoria(consolas,entretenimiento).
enCategoria(entretenimiento,producto).

enCategoria('Omen 560',dell).
enCategoria(dell,laptop).
enCategoria(dell,escritorio).
enCategoria('Pavillon 15a',hp).
enCategoria(hp,laptop).
enCategoria(hp,escritorio).
enCategoria('Destruinator 500',marcaPatito).
enCategoria(marcaPatito,escritorio).
enCategoria(laptop,computadora).
enCategoria(escritorio,computadora).
enCategoria(computadora,producto).

dentroCategoria(Producto,Categoria):-esProducto(Producto),esCategoria(Categoria),enCategoria(Producto,Categoria).
estaDentroCategoria(Producto,Caracteristica):-enCategoria(Categoria2,Categoria),enCategoria(Producto,Categoria2).

caracteristica('LG_510',blanco,barato,bueno).
caracteristica('Samsung B125',negro,caro,malo).
caracteristica('LG Batimix',rojo,blanco,malo).
caracteristica('Samsung L 200',negro,caro,bueno).
caracteristica('Bose',blanco,caro,malo).
caracteristica('LG',rojo,barato,malo).
caracteristica('XBox 360',verde,barato,malo).
caracteristica('XBox one',verde,caro,bueno).
caracteristica('PS 2',negro,barato,bueno).
caracteristica('PS 3',negro,barato,bueno).
caracteristica('Omen 560',plateado,barato,malo).
caracteristica('Pavillon 15a',plateado,caro,bueno).
caracteristica('Destruinator 500',plateado,barato,bueno).

gustoMaria1(Producto):-esProducto(Producto),caracteristica(Producto,verde,_,_),enCategoria(Producto,producto).
gustoMaria2(Producto):-esProducto(Producto),caracteristica(Producto,blanco,barato,_),enCategoria(Producto,entretenimiento).
gustoMaria3(Producto):-esProducto(Producto),caracteristica(Producto,rojo,_,malo),enCategoria(Producto,electrodomestico).
gustoMaria4(Producto):-esProducto(Producto),caracteristica(Producto,_,caro,_),enCategoria(Producto,producto).

gustoJuana1(Producto):-esProducto(Producto),caracteristica(Producto,negro,caro,_),enCategoria(Producto,entretenimiento).
gustoJuana2(Producto):-esProducto(Producto),caracteristica(Producto,plateado,_,bueno),enCategoria(Producto,computadora).
gustoJuana3(Producto):-esProducto(Producto),caracteristica(Producto,_,barato,_),enCategoria(Producto,producto).

gustoJeremias1(Producto):-esProducto(Producto),caracteristica(Producto,_,caro,bueno),enCategoria(Producto,electrodomestico).
gustoJeremias2(Producto):-esProducto(Producto),caracteristica(Producto,_,barato,bueno),enCategoria(Producto,producto).