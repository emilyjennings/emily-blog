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

  def block_code(code, lang)
    %(<pre><code class="block-code">#{code}</code></pre>)
  end

  def codespan(code)
    %(<code class="inline-code">#{code}</code>)
  end

  def convert_date(date)
    if date.include?("-")
      new_date = date.split("-")
      day = new_date[2].split("")[0] == '0' ? new_date[2].split("")[1] : new_date[2]
      if new_date[1] == '01'
        "January #{day}, #{new_date[0]}"
      elsif new_date[1] == '02'
        "February #{day}, #{new_date[0]}"
      elsif new_date[1] == '03'
        "March #{day}, #{new_date[0]}"
      elsif new_date[1] == '04'
        "April #{day}, #{new_date[0]}"
      elsif new_date[1] == '05'
        "May #{day}, #{new_date[0]}"
      elsif new_date[1] == '06'
        "June #{day}, #{new_date[0]}"
      elsif new_date[1] == '07'
        "July #{day}, #{new_date[0]}"
      elsif new_date[1] == '08'
        "August #{day}, #{new_date[0]}"
      elsif new_date[1] == '09'
        "September #{day}, #{new_date[0]}"
      elsif new_date[1] == '10'
        "October #{day}, #{new_date[0]}"
      elsif new_date[1] == '11'
        "November #{day}, #{new_date[0]}"
      elsif new_date[1] == '12'
        "December #{day}, #{new_date[0]}"
      end
    end
  end

end
