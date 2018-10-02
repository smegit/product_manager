class WarmingDrawer < Product

  jsonb_accessor :data,
    capacity: [:string, array: true, default: []],
    drawer: :string,
    fascia: :string,
    functions: [:string, array: true, default: []],
    installation: :string,
    power_supply: :string,
    size: :string,
    temperature: :string,
    timer: :string,

    # no
    function_list: [:string, array: true, default: []]

end
