# frozen_string_literal: true

module ApplicationHelper
  def br_date(us_date)
    us_date.strftime('%d/%m/%Y')
  end
end
