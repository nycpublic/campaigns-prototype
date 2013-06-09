Date::DATE_FORMATS.merge!({
  :friendly => lambda {|date| date.strftime("%B #{date.day.ordinalize}, %Y")}
})
