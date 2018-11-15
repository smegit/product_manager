class DolceCompact < Product

  jsonb_accessor :data,
    auto_menus: :string,
    capacity: [:string, array: true, default: []],
    cavity: :string,
    cleaning: :string,
    cooking_levels: :string,
    device_display: :string,
    installation: :string,
    lighting: :string,
    microwave_power: :string,
    programmability: :string,
    thermostat: :string,
    total_functions: [:string, array: true, default: []],
    water_tank_capacity: :string,
    function_list: [:string, array: true, default: []]

end
