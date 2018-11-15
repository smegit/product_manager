class Domino < Product

  jsonb_accessor :data,
    capacity: [:string, array: true, default: []],
    gas_connection: [:string, array: true],
    installation: :string,
    burners: :string,
    temperature_control: :string,
    cutout: [:string, array: true, default: []],
    
    # no 
    function_list: [:string, array: true, default: []]

end
