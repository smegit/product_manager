class Fridge < Product

  jsonb_accessor :data,
    accessories: [:string, array: true, default: []],
    defrost: :string,
    energy_consumption: :string,
    freezer_door: :string,
    gross_capacity: [:string, array: true, default: []],
    installation: :string,
    lighting: :string,
    door_shelves: [:string, array: true, default: []],
    drawers: [:string, array: true, default: []],
    shelves: [:string, array: true, default: []],
    star_rating: :string,


    function_list: [:string, array: true, default: []]

end
