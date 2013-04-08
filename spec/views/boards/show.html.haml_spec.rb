require "spec_helper"

describe "boards/show.html.haml" do

  context "page structure" do
    before do
      render
    end

    context "form" do
      it "renders" do
        rendered.should have_selector("#form")
      end

      it "has input field for station name" do
        rendered.should have_selector("#form input[name='station'][type='text']")
      end

      it "has checkoboxes to choose transportation means"do
        ["ice_tgv_rj", "ec_ic", "ir", "re_d", "ship",
          "s_sn_r", "bus", "cableway", "arz_ext",
          "tramway_underground"].each do |name|
          rendered.should have_selector("#form input[type='checkbox'][name='#{name}']")
        end
      end

    end

    it "renders results" do
      rendered.should have_selector("#stations")
    end
  end
end
