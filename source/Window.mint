module Window {
  fun navigate (url : String) : Void {
    `_navigate(url)`
  }

  fun title : String {
    `document.title`
  }

  fun setTitle (title : String) : Void {
    `document.title = title`
  }

  fun url : Url {
    Url.parse(href())
  }

  fun href : String {
    `window.location.href`
  }

  fun width : Number {
    `window.innerWidth`
  }

  fun height : Number {
    `window.innerHeight`
  }

  fun scrollHeight : Number {
    `document.body.scrollHeight`
  }

  fun scrollWidth : Number {
    `document.body.scrollWidth`
  }

  fun scrollLeft : Number {
    `document.body.scrollLeft`
  }

  fun scrollTop : Number {
    `document.body.scrollTop`
  }

  fun setScrollTop (position : Number) : Void {
    `document.body.scrollTop = position`
  }

  fun setScrollLeft (position : Number) : Void {
    `document.body.scrollLeft = position`
  }
}
