require 'watir'

browser = Watir::Browser.new

#browser.window.maximize

browser.goto "www.google.com.br"

browser.text_field(title:"Pesquisar").set("linkedin")

browser.button(name:"btnK").click

browser.a(href:"https://br.linkedin.com/").click

browser.a(data_tracking_control_name:"homepage-basic_intent-module-jobs").click
    
browser.text_field(aria_label:"Pesquisar cargos ou empresas").set("Analista De Sistema")

browser.send_keys :enter

browser.text_field(aria_label:"Localidade").set("Campinas e Região")

browser.send_keys :enter

browser.li(data_row:"1").click

sleep 5

puts 'Teste realizado com sucesso!'
