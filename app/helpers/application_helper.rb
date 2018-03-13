module ApplicationHelper
  def format_date(created_at)
    created_at.strftime("%d %B, %Y")
  end
end
