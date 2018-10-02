class VictoriaCompact < Product

  jsonb_accessor :data,
    capacity: [:string, array: true, default: []],
    cleaning: :string,
    cooking_levels: :string,
    device_display: :string,
    function_list: [:string, array: true, default: []],
    installation: :string,
    lighting: :string,
    microwave_power: :string,
    programmability: [:string, array: true, default: []],
    thermostat: :string,
    total_functions: [:string, array: true, default: []],
    water_tank_capacity: :string,

    # no
    auto_menus: :string
end
