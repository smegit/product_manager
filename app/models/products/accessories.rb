class Accessories < Product

  jsonb_accessor :data,

    # no 
    function_list: [:string, array: true, default: []]

end
