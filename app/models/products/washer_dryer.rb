class WasherDryer < Product

    jsonb_accessor :data,
        auxiliary_functions: [:string, array: true, default: []],
        capacity: [:string, array: true, default: []],
        device_display: :string,
        door: :string,
        drum_construction: :string,
        electrical_input: :string,
        energy_rating: :string,
        feature_list: [:string, array: true, default: []],
        programs_list: [:string, array: true, default: []],
        size: :string,
        spin_speed: :string,
        total_current: :string,
        water_rating: :string,

        # no
        function_list: [:string, array: true, default: []]
end
  