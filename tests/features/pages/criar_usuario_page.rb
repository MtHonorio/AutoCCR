class User < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'    
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario
        nome.set 'Matheus'
        sobrenome.set 'Honorio'
        email.set 'matheus0honorio@gmail.com'
        endereco.set 'rua 1'
        universidade.set 'UFPB'
        profissao.set 'Analista'
        genero.set 'Masculino'
        idade.set '20'
        criar.click


    end
    
end