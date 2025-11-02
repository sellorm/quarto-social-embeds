local function isEmpty(s)
    return s == nil or s == ''
end

function bsky(args, kwargs)
    if quarto.doc.isFormat('html') then
        -- Get the post URL from args
        local post_url = pandoc.utils.stringify(args[1])

        if isEmpty(post_url) then
            quarto.log.error("Bluesky post URL is required")
            return pandoc.Null()
        end

        print(post_url)

        -- Assemble the Bluesky oEmbed API URL
        local oembed_url = 'https://embed.bsky.app/oembed?url=' .. post_url

        -- Fetch the oEmbed data
        local mt, api_resp = pandoc.mediabag.fetch(oembed_url)

        -- Parse the JSON response
        local oembed_data = quarto.json.decode(api_resp)

        -- Extract the HTML from the oEmbed response
        if oembed_data and oembed_data.html then
            return pandoc.RawInline('html', oembed_data.html)
        else
            quarto.log.error("Failed to fetch Bluesky embed data")
            return pandoc.Null()
        end
    else
        return pandoc.Null()
    end
end
