#' talkdesk.com color palette
#'
#'
#' @family colour talkdesk
#' @export
talkdesk_pal <- function() {
  colors <- deframe(ggthemes::ggthemes_data[["talkdesk"]])
  values <- unname(colors[c("Dark Blue", "Orange", "Teal", "Light Blue")])
  max_n <- length(values)
  f <- manual_pal(values)
  attr(f, "max_n") <- max_n
  f
}

#' talkdesk.com color scales
#'
#' Color scales using the colors in the talkdesk graphics.
#'
#' @inheritParams ggplot2::scale_colour_hue
#' @family colour talkdesk
#' @rdname scale_talkdesk
#' @export
scale_colour_talkdesk <- function(...) {
  discrete_scale("colour", "talkdesk", talkdesk_pal(), ...)
}

#' @rdname scale_talkdesk
#' @export
scale_color_talkdesk <- scale_colour_talkdesk

#' @rdname scale_talkdesk
#' @export
scale_fill_talkdesk <- function(...) {
  discrete_scale("fill", "talkdesk", talkdesk_pal(), ...)
}
