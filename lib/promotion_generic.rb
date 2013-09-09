class PromotionGeneric < PromotionRule
  PRIORITY = 2

  def execute
    return ten_percent_off if total > 60
    0
  end

  def ten_percent_off
    (total * 10) / 100
  end
end