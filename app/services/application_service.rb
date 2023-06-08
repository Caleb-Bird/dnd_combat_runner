class ApplicationService
  # Set variables to be passed in to the initalize method by naming them in the array
  # Use this for unchanging class level variables that would otherwise be passed from method to method as params
  # Any variables left out are passed to the call instance method

  def self.initialize_param_keys
    []
  end

  def self.call(**args, &block)
    return_service = args.delete(:return_service)
    service = new(**args.slice(*initialize_param_keys))
    result = service.call(**args.except(*initialize_param_keys), &block)
    return_service&.to_bool ? service : result
  end

  def initialize(**args)
  end
end
