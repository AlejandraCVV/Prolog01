categoria(electrodomestico).
categoria(entretenimiento).
categoria(computadora).
categoria(batidora).
categoria(lavadora).
categoria(parlantes).
categoria(consolas).
categoria(laptop).
categoria(escritorio).

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

caracteristica('LG_510',blanco).
caracteristica('Samsung B125',negro).
caracteristica('LG Batimix',rojo).
caracteristica('Samsung L 200',negro).
caracteristica('Bose',blanco).
caracteristica('Bose',negro).
caracteristica('LG',rojo).
caracteristica('XBox 360',verde).
caracteristica('XBox one',verde).
caracteristica('PS 2',negro).
caracteristica('PS 3',negro).
caracteristica('Omen 560',plateado).
caracteristica('Pavillon 15a',plateado).
caracteristica('Destruinator 500',plateado).

caracteristica('LG_510',bueno).
caracteristica('Samsung L 200',bueno).
caracteristica('XBox one',bueno).
caracteristica('PS 2',bueno).
caracteristica('PS 3',bueno).
caracteristica('Pavillon 15a',bueno).
caracteristica('Destruinator 500',bueno).

caracteristica('Samsung B125',malo).
caracteristica('LG Batimix',malo).
caracteristica('LG',malo).
caracteristica('XBox 360',malo).
caracteristica('Omen 560',malo).

caracteristica('LG_510',barato).
caracteristica('LG Batimix',barato).
caracteristica('LG',barato).
caracteristica('XBox 360',barato).
caracteristica('PS 2',barato).
caracteristica('PS 3',barato).
caracteristica('Omen 560',barato).
caracteristica('Destruinator 500',barato).

caracteristica('Samsung B125',caro).
caracteristica('Samsung L 200',caro).
caracteristica('Bose',caro).
caracteristica('XBox one',caro).
caracteristica('Pavillon 15a',caro).

esCategoria('LG_510',batidora).
esCategoria('LG_510',electrodomestico).
esCategoria('Samsung B125',batidora).
esCategoria('Samsung B125',electrodomestico).
esCategoria('LG Batimix',lavadora).
esCategoria('LG Batimix',electrodomestico).
esCategoria('Samsung L 200',lavadora).
esCategoria('Samsung L 200',electrodomestico).
esCategoria('Bose',parlantes).
esCategoria('Bose',entretenimiento).
esCategoria('LG',parlantes).
esCategoria('LG',entretenimiento).
esCategoria('XBox 360',xBox).
esCategoria('XBox 360',consolas).
esCategoria('XBox 360',entretenimiento).
esCategoria('XBox one',xBox).
esCategoria('XBox one',consolas).
esCategoria('XBox one',entretenimiento).
esCategoria('PS 2',playStation).
esCategoria('PS 2',consolas).
esCategoria('PS 2',entretenimiento).
esCategoria('PS 3',playStation).
esCategoria('PS 3',consolas).
esCategoria('PS 3',entretenimiento).
esCategoria('Omen 560',dell).
esCategoria('Omen 560',laptop).
esCategoria('Omen 560',escritorio).
esCategoria('Omen 560',computadora).
esCategoria('Pavillon 15a',hp).
esCategoria('Pavillon 15a',laptop).
esCategoria('Pavillon 15a',escritorio).
esCategoria('Pavillon 15a',computadora).
esCategoria('Destruinator 500',marcaPatito).
esCategoria('Destruinator 500',escritorio).
esCategoria('Destruinator 500',computadora).

gustoMaria1(Producto,Caracteristica):-caracteristica(Producto,verde).
gustoMaria2(Entretenimiento,Caracteristica):-caracteristica(Entretenimiento,blanco),caracteristica(Entretenimiento,barato).
gustoMaria3(Electrodomestico,Caracteristica):-caracteristica(Electrodomestico,rojo),caracteristica(Electrodomestico,malo).
gustoMaria4(Producto,Caracteristica):-caracteristica(Producto,caro).

gustoJuana1(Entretenimiento,Caracteristica):-caracteristica(Entretenimiento,negro),caracteristica(Entretenimiento,caro).
gustoJuana2(Computadoras,Caracteristica):-caracteristica(Computadoras,plateado),caracteristica(Computadoras,bueno).
gustoJuana3(Producto,Caracteristica):-caracteristica(Producto,barato).

gustoJeremias1(Electrodomestico,Caracteristica):-caracteristica(Electrodomestico,bueno),caracteristica(Electrodomestico,caro).
gustoJeremias2(Producto,Caracteristica):-caracteristica(Producto,barato),caracteristica(Producto,bueno).