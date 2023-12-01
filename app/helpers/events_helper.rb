module EventsHelper
  def toggle_period_query_values(new_value)
    query_values = (@permited_params[:period] || "").split('&')
    query_values.include?(new_value) ? query_values.delete(new_value) : query_values.push(new_value)
    query = query_values.join('&')
  end

  def toggle_category_query_values(new_value)
    query_values = (@permited_params[:category] || "").split('&')
    query_values.include?(new_value) ? query_values.delete(new_value) : query_values.push(new_value)
    query = query_values.join('&')
  end
end
