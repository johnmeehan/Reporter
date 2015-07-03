module RecordsHelper
  def display_date(date)
    # date ? l(date, format: :short) : ''
    date ? date.strftime("%B %d, %Y") : ''
  end
end
