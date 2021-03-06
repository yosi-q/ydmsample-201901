require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "ブログ"
  end

  test "creating a Blog" do
    visit blogs_url
    click_on "新規作成"

    fill_in "Body", with: @blog.body
    fill_in "Title", with: @blog.title
    click_on "Create Blog"

    assert_text "ブログを正常に作成できました!"
    click_on "戻る"
  end

  test "updating a Blog" do
    visit blogs_url
    click_on "編集", match: :first

    fill_in "Body", with: @blog.body
    fill_in "Title", with: @blog.title
    click_on "Update Blog"

    assert_text "Blog was successfully updated."
    click_on "戻る"
  end

  test "destroying a Blog" do
    visit blogs_url
    page.accept_confirm do
      click_on "削除", match: :first
    end

    assert_text "Blog was successfully destroyed."
  end
end
