suite "Regexp.create" {
  test "it returns a new Regexp" {
    (Regexp.create("a")
    |> Regexp.toString()) == "/a/"
  }
}

suite "Regexp.createWithOptions" {
  test "it returns a new Regexp with the specified options" {
    (Regexp.createWithOptions(
      "a",
      {
        caseInsensitive = true,
        multiline = true,
        unicode = true,
        global = true,
        sticky = true
      })
    |> Regexp.toString()) == "/a/gimuy"
  }
}

suite "Regexp.toString" {
  test "it returns the string representation of a regexp" {
    (Regexp.create("a")
    |> Regexp.toString()) == "/a/"
  }
}

suite "Regexp.escape" {
  test "escapes a string to use in a regexp" {
    Regexp.escape("-{") == "\\-\\{"
  }
}

suite "Regexp.split" {
  test "splits a string with a regexp" {
    (Regexp.create(",")
    |> Regexp.split("a,b,c,d")) == [
      "a",
      "b",
      "c",
      "d"
    ]
  }
}

suite "Regexp.replace" {
  test "replaces the matches with a replacer" {
    (Regexp.createWithOptions(
      "\\w",
      {
        caseInsensitive = true,
        multiline = false,
        unicode = false,
        global = true,
        sticky = false
      })
    |> Regexp.replace(
      "a,b,c,d",
      \match : Regexp.Match => match.match + Number.toString(match.index))) == "a1,b2,c3,d4"
  }
}
