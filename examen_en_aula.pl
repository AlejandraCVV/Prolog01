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