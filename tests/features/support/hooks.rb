After do |scenario|
    #retira espacos do nome dos cenarios
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/', '_')

    #para cada cenario sera tirado uma foto se passou ou nao
    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'falhou')
    else
        tirar_foto(scenario_name.downcase!, 'sucesso')
    end
end