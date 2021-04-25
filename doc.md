# Q1
**TODO**(escrever um resumo do projeto).
No segundo nível de hierarquia temos os seguintes módulos:


- A)
    - control (Controla o magnétron)
    - timer (Conta o tempo)
    - decoder (Controla o display de 7 segmentos)
    - encoder (Recebe o input do teclado e controla outras partes)
- B)
    Quando nenhum botão está sendo pressionado e o Magnetron está ligado,
    o signal do clk que entra no encoder passa por um divisor de clock
    para gerar um sinal de clock de 1Hz (passsa por um mux que escolhe ele quando o Magnetron está ligado) e vai para a entrada clk do temporizador, o que resulta em o temporizador decrescer a cada 1s.
- C) 
    Quando  algum botão está sendo pressionado, mas o Magnetron estiver ligado, o sinal vai ser a mesmoa coisa que descrito na B).
    Mas quando o magnetron estiver desligado, o sinal será uma PGT que será acionada 40ms após um botão for pressionado.
    Ele é apenas ativado uma vez independentemente de quantas vezes o botão for pressionado dentro dessa janela de 40ms.
    Ele é usado como clock para carregar o dígito digitado no temporizador..
# Q5
**TODO**(Descrever as ondas usadas nos testes)
# Q6  
**TODO**(Fazer uma auto avaliação)
