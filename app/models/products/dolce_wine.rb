class DolceWine < Product

  jsonb_accessor :data,
    air_filter: :string,
    capacity: [:string, array: true, default: []],
    cooling: :string,
    device_display: :string,
    door: :string,
    installation: :string,
    lighting: :string,
    shelves: [:string, array: true, default: []],
    thermostat: :string,

    function_list: [:string, array: true, default: []]

end
