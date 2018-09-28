class GasCooktop < Product

  jsonb_accessor :data,
    capacity: [:string, array: true, default: []],
    controls: :string,
    cutout: [:string, array: true, default: []],
    gas_connection: [:string, array: true, default: []],
    ignition: :string,
    installation: :string,
    pan_size: :string,
    power_levels: :string,
    size: :string,
    timers: [:string, array: true, default: []],

    # no
    function_list: [:string, array: true, default: []]

end
