class Dashing.Codeship extends Dashing.Widget

  @accessor 'status', ->
    if @get('current') == "success" then 'icon-check-sign'
    else if @get('current') == "error" then 'icon-ban-circle'
    else if @get('current') == "waiting" then 'icon-pause'
    else if @get('current') == "testing" then 'icon-cog'
