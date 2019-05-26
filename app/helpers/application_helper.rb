module ApplicationHelper

  def log_in(user)
    session[:id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    current_user ||= User.find_by(id: session[:id])

  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    current_user != nil
  end

  #markdown helper - this allows posts to have markdown capability
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  def postcontent(content)
    renderer = Redcarpet::Render::HTML.new(fenced_code_blocks: true, autolink: true, quote: true)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(content).html_safe
  end

end
