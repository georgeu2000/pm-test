
describe "Widget Modal Window", ->
  beforeEach ->
    loadFixtures('main_page')

  it "gets articles from server", ->
    # expect($('#dialog')).toBeDefined()
    # expect($('#opener')).toBeDefined()
    # spyOn($, "ajax")
    $('#opener').click()
    # expect($.ajax.mostRecentCall.args[0]["url"]).toEqual("/products/123")

  it "opens a dialog box", ->
    expect($('#dialog')).toExist()
    expect($('#dialog')).toBeHidden()
    $('#opener').click()
    expect($('#dialog')).toBeVisible()
