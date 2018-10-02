class Microwave < Product

  jsonb_accessor :data,
    auto_cook_functions: :string,
    capacity: [:string, array: true, default: []],
    cavity_type: :string,
    clock: :string,
    control_panel: :string,
    convection_power: :string,
    defrost: :string,
    device_display: :string,
    grill_power: :string,
    installation: :string,
    lighting: :string,
    microwave_power: :string,
    other_functions: [:string, array: true, default: []],
    power_levels: :string,
    timer: :string,
    turntable: :string,

    # no
    function_list: [:string, array: true, default: []]
end
