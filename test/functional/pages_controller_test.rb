require File.dirname(__FILE__) + "/../test_helper.rb"

class PagesControllerTest < ActionController::TestCase
  use_ubiquo_fixtures
  
  def test_should_get_show    
    get :show, :url_name => pages(:one).url_name, :category => pages(:one).page_category.url_name
    assert_response :success
    blocks = assigns(:blocks)
    assert blocks[:block_a], "Cannot find expected block"
  end

  def test_should_get_show_without_assigned_role
    get :show, :url_name => pages(:one).url_name, :category => pages(:one).page_category.url_name
    assert_response :success
  end
  
end