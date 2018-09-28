class FreestandingCooker2 < Product

  jsonb_accessor :data,
    barbecue: :string,
    capacity: [:string, array: true, default: []],
    cleaning: :string,
    cooking_levels: :string,
    description_2: :string,
    device_display: :string,
    function_list: [:string, array: true, default: []],
    gas_input: :string,
    installation: :string,
    lighting: :string,
    programmability: [:string, array: true, default: []],
    thermostat: :string,
    total_functions: [:string, array: true, default: []],


    # no
    hob: :string,
    safety_hob: :string,
    supplied_accessories_hob: [:string, array: true, default: []],
    main_oven_left: :string,
    capacity_main_oven: [:string, array: true, default: []],
    total_functions_main_oven: [:string, array: true, default: []],
    programmability_main_oven: [:string, array: true, default: []],
    cleaning_main_oven: :string,
    safety_main_oven: :string,
    supplied_accessories_main_oven: [:string, array: true, default: []],

    aux_oven_right: :string,
    capacity_aux_oven: [:string, array: true, default: []],
    cooking_levels_aux_oven: :string,
    thermostat_aux_oven: :string,
    cleaning_aux_oven: :string,
    lighting_aux_oven: :string,
    safety_aux_oven: :string,
    supplied_accessories_aux_oven: [:string, array: true, default: []],
    
    function_list_main_oven: [:string, array: true, default: []],
    function_list_aux_oven: [:string, array: true, default: []]
    # added

end