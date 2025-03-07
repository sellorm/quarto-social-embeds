function bsky(args)
    if quarto.doc.isFormat('html') then
        local post_id = pandoc.utils.stringify(args[1])

        -- Assemble HTML to be returned
        local html = '<blockquote class="bluesky-embed" data-bluesky-uri="at://did:plc:ijppcipdnxeyu55aaewyrhzn/app.bsky.feed.post/'
            .. post_id
            .. '"></blockquote><script async src="https://embed.bsky.app/static/embed.js" charset="utf-8"></script>'
            

        return pandoc.RawInline('html', html)
    else
        return pandoc.Null()
    end
end
