After do |scenario|
    scenario_name = scenario.name.gsub(' ', '_')

    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'Falhou')
    else
        tirar_foto(scenario_name.downcase!, 'Passou')
    end

end