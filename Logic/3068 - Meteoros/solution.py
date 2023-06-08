def isMeteoritoNaFazenda(m1,m2,x1,y1,x2,y2):
    if (m1>=x1) and (m1<=x2):
        if (m2<=y1) and (m2>=y2):
            return True
    return False
        

ntest = 0
resposta = []
numeros = input()

while numeros != "0 0 0 0":
    ntest += 1
    n = int(input())
    
    numeros = numeros.split()

    x1 = int(numeros[0])
    y1 = int(numeros[1])
    x2 = int(numeros[2])
    y2 = int(numeros[3])

    meteoritosNaFazenda = 0
    
    for _ in range(n):
        meteorito = input()
        meteorito = meteorito.split()
        m1 = int(meteorito[0])
        m2 = int(meteorito[1])
        
        if isMeteoritoNaFazenda(m1,m2,x1,y1,x2,y2) :
            meteoritosNaFazenda += 1
        
    resposta.append("Teste " + str(ntest))
    resposta.append(meteoritosNaFazenda)
    
    numeros = input()


for linha in resposta:
    print(linha)