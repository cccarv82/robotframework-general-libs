*** Settings ***
Documentation                                     Suite para testar a classe ContaLibrary.py

Library                                           ContaLibrary.py
Library                                           massa.py
Library                                           CryptoLibrary                                     %{private_key_password}


*** Variables ***
${senha_protegida}
...    crypt:Xw1HxJTEsPJPYrlWTGhZ6ImyKrEu+jEuOVKlKQrUrE78WCw+jlF49+f7vY7wrn5TKtf6X6jRm5g=


*** Test Cases ***
Quando abro uma nova conta deve retornar saldo ZERADO
    [Documentation]    Test Case para abrir uma nova conta
    Abrir Conta
    ${saldo_final}                        Obter Saldo
    ${saldo_esperado}                     Convert To Number       0.0
    Log           ${saldo_final}
    Should Be Equal                       ${saldo_final}          ${saldo_esperado}

Quando faço um deposito deve refletir o valor no meu saldo
    Abrir Conta
    ${valor_deposito}                     Valor Deposito
    Deposita      ${valor_deposito}
    ${saldo_final}                        Obter Saldo
    Should Be Equal                       ${saldo_final}          ${valor_deposito}

Quando faço um saque deve deduzir o valor do meu saldo
    Abrir Conta
    ${valor_deposito}                     Valor Deposito
    Deposita      ${valor_deposito}
    ${valor_saque}                        Valor Saque
    Saca          ${valor_saque}
    ${saldo_esperado}                     Evaluate
    ...           ${valor_deposito}-${valor_saque}-2
    ${saldo_final}                        Obter Saldo
    Should Be Equal                       ${saldo_final}          ${saldo_esperado}

Quando solicito a impressão da minha senha bancária
    Log To Console                        Senha Criptografada: ${senha_protegida}
    ${senha_desprotegida}                 Get Decrypted Text      ${senha_protegida}
    Log To Console                        Senha Descriptografada: ${senha_desprotegida}
