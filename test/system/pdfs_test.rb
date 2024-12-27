require "application_system_test_case"

class PdfsTest < ApplicationSystemTestCase
  setup do
    @pdf = pdfs(:one)
  end

  test "visiting the index" do
    visit pdfs_url
    assert_selector "h1", text: "Pdfs"
  end

  test "should create pdf" do
    visit pdfs_url
    click_on "New pdf"

    fill_in "Description", with: @pdf.description
    fill_in "First page numberuploaded filename", with: @pdf.first_page_numberuploaded_filename
    fill_in "Name", with: @pdf.name
    fill_in "Owner", with: @pdf.owner_id
    fill_in "Page count", with: @pdf.page_count
    fill_in "Uploaded at", with: @pdf.uploaded_at
    fill_in "Uploaded by", with: @pdf.uploaded_by_id
    fill_in "Version", with: @pdf.version
    click_on "Create Pdf"

    assert_text "Pdf was successfully created"
    click_on "Back"
  end

  test "should update Pdf" do
    visit pdf_url(@pdf)
    click_on "Edit this pdf", match: :first

    fill_in "Description", with: @pdf.description
    fill_in "First page numberuploaded filename", with: @pdf.first_page_numberuploaded_filename
    fill_in "Name", with: @pdf.name
    fill_in "Owner", with: @pdf.owner_id
    fill_in "Page count", with: @pdf.page_count
    fill_in "Uploaded at", with: @pdf.uploaded_at.to_s
    fill_in "Uploaded by", with: @pdf.uploaded_by_id
    fill_in "Version", with: @pdf.version
    click_on "Update Pdf"

    assert_text "Pdf was successfully updated"
    click_on "Back"
  end

  test "should destroy Pdf" do
    visit pdf_url(@pdf)
    click_on "Destroy this pdf", match: :first

    assert_text "Pdf was successfully destroyed"
  end
end
