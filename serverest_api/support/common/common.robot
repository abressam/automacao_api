* Settings *
Documentation       Keywords and variables for general uses

* Keywords *
Return Status Code "${statuscode}"
    Log To Console          \nStatus Code: ${response.status_code}
    Should Be True          ${response.status_code} == ${statuscode}

Import Static JSON
    [Arguments]     ${file_name}
    ${file}         Get File        ${EXECDIR}/serverest_api/support/fixtures/static${file_name}
    ${data}         Evaluate        json.loads('''${file}''')       json
    [return]        ${data}

Validate Message Of Success
    Return Status Code "201"
    Should Be Equal      ${response.json()["message"]}       Cadastro realizado com sucesso
    Log To Console      Response: ${response.json()["message"]}
    Should Not Be Empty     ${response.json()["_id"]}

Validate Message of Success Remove Register
    Should Be Equal      ${response.json()["message"]}       Registro excluído com sucesso

Validate Message of Success Change Register
    Log To Console      Response: ${response.json()["message"]}
    Should Be Equal      ${response.json()["message"]}       Registro alterado com sucesso
