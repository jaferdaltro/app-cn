namespace :populate do
  desc "TODO"
  task spreadsheets: :environment do
    sheet = Roo::Spreadsheet.open('app/assets/spreadsheets/fortaleza.xlsx')
    sheet.each(email: 'Endereço de e-mail', name: 'Nome Completo', age: 'Idade',
              field: 'Qual campus você congrega?') do |hash|
      puts hash.inspect
    end
  end
end
