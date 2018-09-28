class FreestandingCooker < Product

  jsonb_accessor :data,
    auto_menus: :string,
    capacity: [:string, array: true, default: []],
    cleaning: :string,
    description_2: :string,
    cooking_levels: :string,
    device_display: :string,
    door_glass: :string,

    function_list: [:string, array: true, default: []],
    gas_input: :string,
    installation: :string,
    lighting: :string,
    main_oven: :string,
    programmability: [:string, array: true, default: []],
    thermostat: :string,
    total_functions: [:string, array: true, default: []],

    # no
    capacity_gas_hob: [:string, array: true, default: []],
    safety_gas_hob: [:string, array: true, default: []],
    supplied_accessories_gas_hob: [:string, array: true, default: []],
    capacity_electric_hob: [:string, array: true, default: []],
    safety_electric_hob: [:string, array: true, default: []],
    supplied_accessories_electric_hob: [:string, array: true, default: []],
    supplied_accessories_main_oven: [:string, array: true, default: []]
end
