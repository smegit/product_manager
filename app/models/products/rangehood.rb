class Rangehood < Product

    jsonb_accessor :data,
      delay_stop: :string,
      ducting_options: [:string, array: true, default: []],
      illumination: :string,
      installation: :string,
      max_airflow: :string,
      motor: :string,
      noise_rating: :string,
      speeds: :string,

      # no
      function_list: [:string, array: true, default: []] 
end
  