require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

#Apos o require instancia o modulo/variavel como variavel global
AMBIENTE = ENV['AMBIENTE']

#Carrega o ambiente de homolog, concatena o diretorio padrao + o arquivo requerido
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
World(Helper)
World(Pages)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    #Carrega a url do ambiente de homolog como default para os testes
    config.app_host = CONFIG['url_padrao']
    #Tempo maximo para esperar o item ser carregado na tela
    config.default_max_wait_time = 10
    config.include Capybara::DSL
end