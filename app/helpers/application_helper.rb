module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column
    css_class = (column.parameterize('_') == sort_column) ? "current #{sort_direction}" : nil
    direction = (column.parameterize('_') == sort_column && sort_direction == 'desc') ? 'asc' : 'desc'
    link_to title, { sort: column.parameterize('_'), direction: direction }, class: css_class
  end
end
