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

function hfun_modtime()
  res = read(`git log -1 --format="%at" --  $(locvar("fd_rpath"))`, String)
  date = Franklin.fd_date(Dates.unix2datetime(parse(Int64,res)))
  return date
end

function hfun_post_listing()
  # all_pages = sort!(collect(keys(Franklin.ALL_PAGE_VARS)))
  # all_pages = String[]
  # for (root, dirs, files) in walkdir("./")
  #     append!(all_pages, filter!(p -> endswith(p, ".md"), joinpath.(root, files)))
  # end
  all_pages = String.(chop.(Franklin.get_rpath.(map(d->joinpath(d...), collect(keys(Franklin.fd_setup(false)[3])))), tail=3))
  print("Pages found:\n")
  print(all_pages)
  print("\n")
  pages = Vector{Dict}()
  for page in all_pages
    tags = pagevar(page, :tags)
    title = pagevar(page, :title)
    date = pagevar(page, :date)
    if date == Date(1,1,1)
      try
        res = read(pipeline(`git log --follow --format=%ad --date unix $page.md`,`tail -1`), String)
        date = Date(Dates.unix2datetime(parse(Int64,chop(res, tail=1))))
      catch e
        print("Error: ")
        print(e)
        date = Date(Dates.unix2datetime(stat(page * ".md").mtime))
      end
    end
    hidden = something(pagevar(page, "hidden"), false)

    if !hidden # "blog" in tags
      push!(pages, Dict(:date=>date,:page=>page,:title=>title))
    end
  end

  sort!(pages, by=p->p[:date], rev=true)
  io = IOBuffer()
  write(io, """<ul class="post_listing">""")
  for p in pages
      write(io, """<li><span><i>$(p[:date])</i></span/> <a href="/$(p[:page])">$(p[:title])</a></li>\n""")
  end
  write(io, "</ul>")
  return String(take!(io))
end
