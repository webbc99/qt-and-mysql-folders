class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def download_qt
    send_file(
      "#{Rails.root}/public/qt@5.5.zip",
      filename: "qt@5.5.zip",
      type: "application/zip"
    )
  end

  def download_mysql
    send_file(
      "#{Rails.root}/public/mysql.zip",
      filename: "mysql.zip",
      type: "application/zip"
    )
  end
end
