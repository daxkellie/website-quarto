
create_proj_card = function(img_src, url, title){
  tags$div(
    class = "card",
    tags$a( href = url,
    tags$img(class="card-img-top",
             src=img_src,
             style="height:auto;")
    )
  )
}