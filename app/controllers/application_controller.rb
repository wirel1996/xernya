class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  def render_403
     render file: 'public/403.html', status: 403, status: :forbidden
  end
  def render_404
    render file: 'public/404.html', status: 404, status: :not_found
  end
  
  def admin?
      render_403 unless params[:admin]
  end
end

