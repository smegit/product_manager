module ProductsHelper

  def function_icon function
    puts function 
    # return "/pdf/images/products/function_icons/#{function.humanize.downcase}.jpg"
    icon_url = Function.where(function_code: "#{function}").pluck(:url)[0]
    if icon_url
     return "/pdf/images/products/function_icons/#{icon_url}"
    else 
      return '/pdf/images/products/function_icons/no_image.jpg'
    end
  end

  def function_des function 
    puts function
    fun_des = Function.where(function_code: "#{function}").pluck(:description)[0]
    if fun_des
      return fun_des
    else
      return 'No Image'
    end
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