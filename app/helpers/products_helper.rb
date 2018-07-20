module ProductsHelper

  def function_icon function
    puts function 
    # return "/pdf/images/products/function_icons/#{function.humanize.downcase}.jpg"
    icon_url = FunctionIcon.find_by(code: "#{function}").icon_url
    return icon_url
  end

  def function_des function 
    puts function
    fun_des = FunctionIcon.find_by(code: "#{function}").function_des
    return fun_des
  end


  def supplied_accessories product
    return if product.supplied_accessories.nil?
    product.supplied_accessories.try(:map) { |x| x }.reject { |x| x.blank? }
  end

  def optional_accessories product
    return if product.optional_accessories.nil?
    product.optional_accessories.try(:map) { |x| x }.reject { |x| x.blank? }
  end

  def dynamic_list list
    return if list.nil?
    list.try(:map) { |x| x }.reject { |x| x.blank? }
  end

end