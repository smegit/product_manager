class FabRefrigeration < Product

  jsonb_accessor :data,
    accessories: [:string, array: true, default: []],
    defrost: :string,
    energy_consumption: :string,
    gross_capacity: [:string, array: true, default: []],
    lighting: :string,
    nb_of_drawers: [:string, array: true, default: []],
    nb_drawers: [:string, array: true, default: []],
    nb_shelves: [:string, array: true, default: []],
    noise: :string,
    star_rating: :string,

    # no 
    shelves_main_compartment: [:string, array: true, default: []],
    drawers_main_compartment: [:string, array: true, default: []],
    lighting_main_compartment: [:string, array: true, default: []],

    shelves_inner_door: [:string, array: true, default: []],
    accessories_inner_door: [:string, array: true, default: []],

    shelves_freezer: [:string, array: true, default: []],
    drawers_freezer: [:string, array: true, default: []],
    accessories_freezer: [:string, array: true, default: []],

    performance: :string,
    function_list: [:string, array: true, default: []]
end
