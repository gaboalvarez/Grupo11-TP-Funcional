data Procesador = Procesador {memoria :: [Int], acumuladorA :: Int, acumuladorB :: Int, contador :: Int, error :: String}

xt8088 = Procesador {memoria = [a], acumuladorA = 0, acumuladorB = 0, contador = 0}

nop procesador = procesador {contador procesador +1}
aumentarTresPosiciones procesador = nop.nop.nop

loadv procesador valor = procesador {acumuladorA = valor}
swap procesador = {acumuladorA = acumuladorB procesador, acumuladorB = acumuladorA procesador}
add procesador = {acumuladorA = acumuladorA + acumuladorB, acumuladorB = 0}
