
describe "Widget Modal Window", ->
  it "gets articles from server", ->
    loadFixtures "main_page"
    expect($('#dialog')).toBeDefined()
    expect($('#opener')).toBeDefined()
    spyOn($, "ajax")
    $('#opener').click()
    # expect($.ajax.mostRecentCall.args[0]["url"]).toEqual("/products/123")