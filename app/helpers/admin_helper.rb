module AdminHelper
  def link_name_toggle(name)
    session[:visible][name] == true ? "hide #{name}" : "show #{name}"
  end
end
