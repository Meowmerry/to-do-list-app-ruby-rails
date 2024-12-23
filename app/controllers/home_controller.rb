class HomeController < ApplicationController
  def trash_em
    @trash_em = List.where(completed: true).destroy_all
    redirect_to root_path, notice: "All Completed Items Were Successfully Deleted."
  end

  def trash_em_all
    @trash_em_all = List.all.destroy_all
    redirect_to root_path, notice: "All Items Were Successfully Deleted."
  end
end
