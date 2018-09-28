class Dishwasher < Product

  jsonb_accessor :data,
    baskets: :string,
    capacity: [:string, array: true, default: []],
    device_display: :string,
    drying: :string,
    end_of_cycle_indicator: :string,
    energy_rating: :string,
    energy_usage: :string,
    feature_list: [:string, array: true, default: []],
    filtration: :string,
    function_list: [:string, array: true, default: []],
    noise: :string,
    programs_list: [:string, array: true, default: []],
    quick_programs_list: [:string, array: true, default: []],
    size: :string,
    temperatures: :string,
    timer: :string,
    total_programs: :string,
    style: :string,
    wash_system: [:string, array: true, default: []],
    water_connection: :string,
    water_softener: :string,
    water_usage: :string,
    water_rating: :string,


    # no
    programmability: [:string, array: true, default: []]

end
