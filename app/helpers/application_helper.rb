module ApplicationHelper

  def transportation_check_boxes
    ["ice_tgv_rj",
      "ec_ic", "ir", "re_d", "ship",
      "s_sn_r", "bus", "cableway",
      "arz_ext", "tramway_underground"].map do |name|
          check_box_tag name
    end.join("\n").html_safe
  end
end
