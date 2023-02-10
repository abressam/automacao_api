* Settings *
Documentation       Keywords and variables for generate fake data
Library             FakerLibrary

* Keywords *
# FakerLibrary just works inside of keywords
Create Valid User Data
    ${name}         FakerLibrary.Name
    ${email}        FakerLibrary.Email
    ${password}     FakerLibrary.Password
    ${authorization}        FakerLibrary.Boolean
    ${payload}      Create Dictionary       nome=${name}       email=${email}      password=${password}        administrador=false
    Set Global Variable            ${payload}
    Log to Console      \n\nDados criados: ${payload}

Create Valid Product Data
    ${product_name}             FakerLibrary.Word
    ${product_price}            FakerLibrary.RandomInt
    ${product_description}      FakerLibrary.Paragraph
    ${product_quantity}         FakerLibrary.RandomInt
    ${payload}      Create Dictionary       nome=${product_name}       preco=${product_price}      descricao=${product_description}    quantidade=${product_quantity}
    Set Global Variable         ${payload}
    Log to Console      \n\nDados criados: ${payload}
