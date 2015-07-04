module RecordsHelper
  def display_as(could_be_a_date)
    begin
      # date ? l(date, format: :short) : ''
      could_be_a_date ? could_be_a_date.strftime("%B %d, %Y") : ''
    rescue
      #its not a date display it as it was
      could_be_a_date
    end
  end
end
