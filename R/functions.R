
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

create_talk_card <- function(talk_link, 
                             img_src, 
                             title, 
                             alt,
                             talk_info,
                             slides = FALSE,
                             repo = FALSE, 
                             recording = FALSE, 
                             blog = FALSE,
                             poster = FALSE,
                             ...) {
  dots <- list(...)
  
  tags$div(
    class = "card-column",
    tags$div(
      class = "talk-card",
      a(href = talk_link,
        tags$img(class ="talk-image", src = img_src, alt = title, style = "width:100%")),
      tags$div(
        class = "container",
        h4(class = "talk-title", title),
        p(class = "talk-info", talk_info)
      ),
      
      tags$div(
        class = "talk-button-column",
      
      if(slides == TRUE) {
        add_talk_button(dots$slides_link, "slides")
      },
      if(repo == TRUE) {
        add_talk_button(dots$repo_link, "repository")
      },
      if(recording == TRUE) {
        add_talk_button(dots$recording_link, "recording")
      },
      if(blog == TRUE) {
        add_talk_button(dots$blog_link, "blog")
      },
      if(poster == TRUE) {
        add_talk_button(dots$poster_link, "poster")
      }
      
      )
      )
    )
}

add_talk_button <- function(url, type) {
    
  if(type == "slides") {
  tags$a(
      href = url,
      style = "border-bottom: none; text-decoration:none !important;",
      tags$button(
        class = "talk-button", "slides"
        )
  )
  } else {
    if(type == "repository") {
      tags$a(
        href = url,
        style = "border-bottom: none; text-decoration:none !important;",
        tags$button(
          class = "talk-button", "github"
        )
      )
    } else {
      if(type == "recording") {
        tags$a(
          href = url,
          style = "border-bottom: none; text-decoration:none !important;",
          tags$button(
            class = "talk-button", "recording"
          )
        )
      } else {
        if(type == "blog") {
          tags$a(
            href = url,
            style = "border-bottom: none; text-decoration:none !important;",
            tags$button(
              class = "talk-button", "blog"
            )
          )
        } else {
          if(type == "poster") {
            tags$a(
              href = url,
              style = "border-bottom: none; text-decoration:none !important;",
              tags$button(
                class = "talk-button", "poster"
              )
            )    
          }
        }
      }
    }
  }
}