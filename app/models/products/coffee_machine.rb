class CoffeeMachine < Product

    jsonb_accessor :data,
        cleaning: :string,
        coffee_bean_capacity: :string,
        device_display: :string,
        functions: [:string, array: true, default: []],
        installation: :string,
        lighting: :string,
        programmability: [:string, array: true, default: []],
        pump_pressure: :string,
        size: :string,
        thermostat: :string,
        water_tank_capacity: :string
  
end
