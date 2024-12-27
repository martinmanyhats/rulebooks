require "test_helper"

class PdfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pdf = pdfs(:one)
  end

  test "should get index" do
    get pdfs_url
    assert_response :success
  end

  test "should get new" do
    get new_pdf_url
    assert_response :success
  end

  test "should create pdf" do
    assert_difference("Pdf.count") do
      post pdfs_url, params: { pdf: { description: @pdf.description, first_page_numberuploaded_filename: @pdf.first_page_numberuploaded_filename, name: @pdf.name, owner_id: @pdf.owner_id, page_count: @pdf.page_count, uploaded_at: @pdf.uploaded_at, uploaded_by_id: @pdf.uploaded_by_id, version: @pdf.version } }
    end

    assert_redirected_to pdf_url(Pdf.last)
  end

  test "should show pdf" do
    get pdf_url(@pdf)
    assert_response :success
  end

  test "should get edit" do
    get edit_pdf_url(@pdf)
    assert_response :success
  end

  test "should update pdf" do
    patch pdf_url(@pdf), params: { pdf: { description: @pdf.description, first_page_numberuploaded_filename: @pdf.first_page_numberuploaded_filename, name: @pdf.name, owner_id: @pdf.owner_id, page_count: @pdf.page_count, uploaded_at: @pdf.uploaded_at, uploaded_by_id: @pdf.uploaded_by_id, version: @pdf.version } }
    assert_redirected_to pdf_url(@pdf)
  end

  test "should destroy pdf" do
    assert_difference("Pdf.count", -1) do
      delete pdf_url(@pdf)
    end

    assert_redirected_to pdfs_url
  end
end
