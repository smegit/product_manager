class Oven < Product
    jsonb_accessor :data,
    auto_menus: :string,
    capacity: [:string, array: true, default: []],
    cavity: :string,
    cleaning: :string,
    cooking_levels: :string,
    device_display: :string,
    door_glass: :string,
    function_list: [:string, array: true, default: []],
    installation: :string,
    interior_finish: :string,
    lighting: :string,
    programmability: [:string, array: true, default: []],
    quote_display: :string,
    thermostat: :string,
    total_functions: [:string, array: true, default: []]
end
