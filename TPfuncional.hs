-- 3.1
data Procesador = Procesador {memoria :: [Int], acumuladorA :: Int, acumuladorB :: Int, contador :: Int, failure :: String} deriving (Show)

mem = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

xt8088 = Procesador {memoria = mem, acumuladorA = 0, acumuladorB = 0, contador = 0, failure = "No hay error" }

-- 3.2
nop procesador = procesador {contador = contador procesador +1}
aumentarTresPosiciones procesador = nop.nop.nop

-- 3.3
lodv valor procesador = procesador {acumuladorA = valor, contador = contador procesador +1}
swap procesador = procesador {acumuladorA = acumuladorB procesador, acumuladorB = acumuladorA procesador, contador = contador procesador +1}
add procesador = procesador {acumuladorA = acumuladorA procesador + acumuladorB procesador, acumuladorB = 0, contador = contador procesador +1}

-- sumar10y22 = add.(lodv 22).swap.(lodv 10) PORQUE MIERDA NO FUNCIONA :(

-- 3.4
-- str adress valor procesador = procesador {memoria = take (adress-1) (memoria procesador) ++ valor ++ drop adress (memoria procesador), contador = contador procesador +1}
-- lod adress procesador = procesador {memoria = take (adress-1) (memoria procesador) ++ ([acumuladorA procesador]) ++ drop adress (memoria procesador), contador = contador procesador +1}








--dividir procesador|acumladorB procesador == 0 = procesador {failure = "DIVISION BY ZERO"}
--                |otherwise = procesador {acumuladorA = fromIntegral acumuladorA procesador / fromIntegral acumuladorB procesador}

-- str adress valor procesador = procesador { memoria = take adress (memoria procesador) ++ valor ++ drop  adress (memoria procesador)}
