function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

function hfun_post_listing()
  print(Franklin.ALL_PAGE_VARS)
  print("\n")
  all_pages = sort!(collect(keys(Franklin.ALL_PAGE_VARS)))
  print("Pages found:\n")
  print(all_pages)
  io = IOBuffer()
  write(io, """<ul class="post_listing">""")
  for page in all_pages
    tags = pagevar(page, :tags)
    title = pagevar(page, :title)
    date = pagevar(page, :date)
    if date == Date(1,1,1)
      date = Date(Dates.unix2datetime(stat(page * ".md").ctime))
    end
    hidden = something(pagevar(page, "hidden"), false)

    if !hidden # "blog" in tags
      write(io, """<li><span><i>$date</i></span/> <a href="/$page">$title</a></li>\n""")
    end
  end
  write(io, "</ul>")
  return String(take!(io))
end
