enLista(Valor, [Cabeza | Cola]):-Valor==Cabeza.
enLista(Valor, [_ | Cola]):-enLista(Valor,Cola).
