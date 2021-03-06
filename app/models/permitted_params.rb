class PermittedParams < Struct.new(:params, :user)

  # Example

  def product
    params.require(:product).permit(*product_attributes)
  end



  def feature

    params.require(:feature).permit(*feature_attributes)

  end

  # def approval
  #   params.require(:approval).permit(*approval_attributes)
  # end



  def system_control

    params.require(:system_control).permit(*system_control_attributes)

  end



  private



  def product_attributes

    [
      

      :id,

      :price,

      :model_number,

      :cover_image,

      :cover_image_cache,

      :type,

      :description,

      :aesthetic,

      :dimensions,

      :power,

      :warranty,

      :status,

      :notes,

      :aesthetic,

      :dimensions,

      :power,

      :notes,

      :warranty,

      :controls,

      :timers,

      :status,

      :device_display,

      :coffee_bean_capacity,

      :pump_pressure,

      :water_tank_capacity,

      :thermostat,

      :installation,

      :cleaning,

      :lighting,

      :total_functions,

      :auto_menus,

      :cooking_levels,

      :microwave_power,

      :aux_oven,

      :size,

      :end_of_cycle_indicator,

      :baskets,

      :water_softener,

      :temperatures,

      :water_connection,

      :timer,

      :filtration,

      :drying,

      :noise,

      :energy_usage,

      :energy_rating,

      :water_usage,

      :water_rating,

      :temperature_control,

      :lighting_main_compartment,

      :defrost,

      :performance,

      :energy_consumption,

      :star_rating,

      :description_2,

      :hob,

      :main_oven_left,

      :aux_oven_right,

      :capacity_oven_left,

      :capacity_oven_right,

      :barbecue,

      :gas_input,

      :total_functions_oven_left,

      :total_functions_oven_right,

      :cooking_levels_oven_left,

      :cooking_levels_oven_right,

      :thermostat_oven_left,

      :thermostat_oven_right,

      :cleaning_oven_left,

      :cleaning_oven_right,

      :lighting_oven_left,

      :lighting_oven_right,

      :safety_oven_left,

      :safety_oven_right,

      :door_glass,

      :electric_hob,

      :gas_hob,

      :weight,

      :ignition,

      :drum_construction,

      :door,

      :spin_speed,

      :electrical_input,

      :total_current,

      :motor,

      :max_airflow,

      :noise_rating,

      :illumination,

      :speeds,

      :delay_stop,

      :cavity_type,

      :turntable,

      :power_levels,

      :grill_power,

      :convection_power,

      :auto_cook_functions,

      :control_panel,

      :clock,

      :top_right_main_oven,

      :aux_oven_left,

      :capacity_main_oven,

      :total_functions_main_oven,

      :door_main_oven,

      :door_oven_left,

      :door_glass_main_oven,

      :cooking_levels_main_oven,

      :thermostat_main_oven,

      :cleaning_main_oven,

      :lighting_main_oven,

      :capacity_grill,

      :burners,

      :total_functions_grill,

      :cooking_levels_grill,

      :thermostat_grill,

      :cleaning_grill,

      :lighting_grill,

      :safety_grill,

      :installation_cooker,

      :capacity_cooker,

      :safety_cooker,

      :lower_left_main_oven,

      :door_oven_right,

      :style,

      :total_programs,

      :grill,

      :total_functions_aux_oven,

      :door_glass_aux_oven,

      :cooking_levels_aux_oven,

      :thermostat_aux_oven,

      :cleaning_aux_oven,

      :lighting_aux_oven,

      :fascia,

      :temperature,

      approval_ids: [],

      # approval_nos: [],

      function_list_main_oven: [],

      function_list_aux_oven: [],

      capacity_aux_oven: [],

      programmability_aux_oven: [],

      supplied_accessories_aux_oven: [],

      gas_connection: [],

      cutout: [],

      safety_electric_hob: [],

      supplied_accessories_electric_hob: [],

      capacity_electric_hob: [],

      supplied_accessories_gas_hob: [],

      supplied_accessories_hob: [],

      capacity_gas_hob: [],

      safety_gas_hob: [],

      capacity_hob: [],

      safety_hob: [],

      capacity: [],

      safety: [],

      finish: [],

      wash_system: [],

      ducting_options: [],

      gross_capacity: [],

      auxiliary_list: [],

      feature_list: [],

      approval_list: [],

      door_shelves_main_compartment: [],

      door_shelves_freezer: [],

      shelves_main_compartment: [],

      drawers_main_compartment: [],

      shelves_inner_door: [],

      shelves_freezer: [],

      drawers_freezer: [],

      quick_programs_list: [],

      programs_list: [],

      function_list: [],

      feature_ids: [],

      supplied_accessories: [],

      optional_accessories: [],

      supplied_accessories_oven_left: [],

      supplied_accessories_oven_right: [],

      supplied_accessories_main_oven: [],

      supplied_accessories_cooker: [],

      accessories_main_compartment: [],

      supplied_accessories_grill: [],

      accessories_inner_door: [],

      accessories_freezer: [],

      programmability: [],

      programmability_oven_left: [],

      programmability_oven_right: [],

      programmability_main_oven: [],

      programmability_grill: [],

      other_functions: [],

      schematic_attachments_attributes: %i[

        id

        attachment

        attachment_cache

        remove_attachment

        _destroy

      ],

      image_attachments_attributes: %i[

        id

        attachment

        attachment_cache

        remove_attachment

        _destroy

      ],

      file_attachments_attributes: %i[

        id

        attachment

        attachment_cache

        remove_attachment

        _destroy

      ],

    ]

  end



  def feature_attributes

    %i[

      id

      name

      feature_type

      long_description

      short_description

    ]

  end

  def approval_attributes

    %i[

      id

      approval_type

      approval_no

    ]

  end



  def system_control_attributes

    %i[

      control_type

      product_type

      function_code

      description

      function_icon_url

      aesthetic_description

      aesthetic_code

    ]

  end

end
