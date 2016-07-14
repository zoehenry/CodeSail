class HamlPreviewController < ApplicationController
  def index

  end

  def preview
    text = params[:haml]

    begin
      @@last_html_result = parse_haml(text)
    rescue => e
      error_msg = e.to_s
    end

    result_hash = {"result" => html_result}

    if error_msg
      result_hash["error"] = error_msg
    end

    render json: result_hash
  end

  private
  def parse_haml(text)
    engine = Haml::Engine.new(text)
    engine.render
  end

  def html_result
    @@last_html_result ||= ""
  end
end
