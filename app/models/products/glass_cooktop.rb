class GlassCooktop < Product

  jsonb_accessor :data,
    capacity: [:string, array: true, default: []],
    gas_connection: [:string, array: true, default: []],
    ignition: :string,
    installation: :string,  
    # no
    function_list: [:string, array: true, default: []]
end
