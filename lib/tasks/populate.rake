namespace :populate do
  desc "TODO"
  task spreadsheets: :environment do
    sheet = Roo::Spreadsheet.open('lib/assets/spreadsheets/fortaleza.xlsx')
    # sheet.each(email: 'Endereço de e-mail', name: 'Nome Completo', age: 'Idade',
    #           field: 'Qual campus você congrega?') do |hash|
    #   puts hash.inspect
    
    # end
    people = sheet.parse(
      email: 'Endereço de e-mail', 
      name: 'Nome Completo',
      age: 'Idade',
      field_member: 'Qual campus você congrega?',
      cell_phone: 'Telefone de contato com DDD',
      is_member: 'Membro da CN?',
      marital_status: 'Estado Civil',
      cep: 'Por favor, informe o seu CEP:',
      neighborhood_preference: 'Qual Bairro você busca um PG?',
      day_preference: 'Informe uma opção de dia da semana para participar de um PG:',
      comments: 'Comentários adicionais',
      registration_at: 'Carimbo de data/hora'
    )
   
    people.each do |person|
      Person.create({
        email: person[:email],
        name: person[:name],
        age: person[:age],
        field_id: find_field(person[:field_member]),
        cell_phone: person[:cell_phone],
        is_member: is_member?(person[:is_member]),
        marital_status: marital_st(person[:marital_status]),
        cep: person[:person],
        neighborhood_preference: person[:neighborhood_preference],
        day_preference: person[:day_preference],
        comments: person[:comments],
        registration_at: person[:registration_at],
      })
    end
  end

  def find_field(name = 'não congregado')
    field = Field.find_by(name: name)
    field.id
  end

  def is_member?(option)
    option == 'sim' ?  true : false
  end

  def marital_st(st)
    if st =~ (/Solteiro/i)
      'single'
    elsif st =~ (/Casado/i)
      'married'
    elsif st =~ (/União Estável/i)
      'common_law'
    elsif st =~ (/Namorando/i)
      'dating'
    elsif st =~ (/divorcia/i)
      'divorced'
    elsif st =~ (/viúvo/i)
      'widower'
    end
  end
end




