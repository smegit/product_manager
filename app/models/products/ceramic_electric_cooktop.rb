class CeramicElectricCooktop < Product

  jsonb_accessor :data,
    capacity: [:string, array: true, default: []],
    installation: :string,
    controls: :string,
    size: :string,
    timers: [:string, array: true, default: []],
    power_levels: :string,
    cutout: [:string, array: true, default: []],
    
    # no 
    gas_connection: [:string, array: true],
    function_list: [:string, array: true, default: []]

end
