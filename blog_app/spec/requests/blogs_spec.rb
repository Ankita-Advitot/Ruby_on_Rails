require 'rails_helper'

RSpec.describe "Blogs API", type: :request do
  describe "GET /blogs" do
    before do
      create_list(:blog, 3, published: true)
    end

    it "returns success response" do
      get blogs_path
      expect(response).to have_http_status(:ok)
    end
  end
end
