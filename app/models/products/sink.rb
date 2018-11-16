class Sink < Product

  jsonb_accessor :data,
    accessories: [:string, array: true, default: []],
    bowl_dimensions: :string,
    sink_volume: :string,
    # no 
    function_list: [:string, array: true, default: []]

end
