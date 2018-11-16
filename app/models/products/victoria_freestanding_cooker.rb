class VictoriaFreestandingCooker < Product

  jsonb_accessor :data,
    capacity: [:string, array: true, default: []],
    cleaning: :string,
    cooking_levels: :string,
    device_display: :string,
    door_glass: :string,
    gas_input: :string,
    installation: :string,
    lighting: :string,
    programmability: [:string, array: true, default: []],
    thermostat: :string,
    total_functions: [:string, array: true, default: []],

    function_list: [:string, array: true, default: []]
end
