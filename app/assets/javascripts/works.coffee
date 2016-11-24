# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# coffeescript
# Rails4では Turbolinks が動作していて、
# この書き方でないと ready イベントが発火しない
#$(document).on 'ready page:load','ready page:change',　->
# 追加ボタンを押されたとき
$ ->
  $('form').on 'click', '.add_field', (event) ->
# 現在時刻をミリ秒形式で取得
    time = new Date().getTime()
    # ヘルパーで作ったインデックス値を↑と置換
    regexp = new RegExp($(this).data('id'), 'g')
    # ヘルパーから渡した fields(HTML) を挿入
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  # 削除ボタンを押されたとき
  $('form').on 'click', '.remove_field', (event) ->
# 削除ボタンを押したフィールドの _destroy = true にする
    $(this).prev('input[name*=_destroy]').val('true')
    # 削除ボタンが押されたフィールドを隠す
    $(this).closest('div').hide()
    event.preventDefault()