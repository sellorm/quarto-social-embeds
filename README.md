# Quarto social embeds

A [Quarto](https://quarto.org) extension to embed content from across the web into a quarto-rendered html document using a shortcode.

Currently includes shortcodes for the following:

* GitHub gists
* Loom
* Twitter
* Vimeo
* Youtube

## Installation

Install the extension with:

``` bash
quarto install extension sellorm/quarto-social-embeds
```

## Usage

### GitHub gists

Embed a gist using `{{< gist USERNAME GIST_ID >}}`. Both `USERNAME` and `GIST_ID` can be extracted from the gist URL. For instance, in this URL `https://gist.github.com/sellorm/20525aff669acafb975b7495b8f2066e` the username is `sellorm` and the ID is `20525aff669acafb975b7495b8f2066e`, giving us:

```
{{< gist sellorm 20525aff669acafb975b7495b8f2066e >}}
```

See `example.qmd` for a working example.

# Loom

To embed a Loom video in your HTML document use this shortcode:

``` {.markdown shortcodes="false"}
{{< loom <VIDEO_ID> >}}
```

Where `<VIDEO_ID>` is the loom video ID. For example:

``` {.markdown shortcodes="false"}
{{< loom 8619b03224f74282b6d56cbedbcd3fc6 >}}
```

Which renders like this:

{{< loom 8619b03224f74282b6d56cbedbcd3fc6 >}}

You can get the VIDEO ID from for the URL of the video.
For instance, in the URL `https://www.loom.com/share/8619b03224f74282b6d56cbedbcd3fc6` the video ID is `8619b03224f74282b6d56cbedbcd3fc6`.


### Twitter

To embed a Tweet into your Quarto html document you can use the shortcode like this:

```markdown
{{< tweet <username> <id> >}}
```

or

```markdown
{{< tweet user=<username> id=<id> >}}
```

This second option is provided for compatibility with [Hugo](https://gohugo.io/content-management/shortcodes/#tweet).

For example:

```markdown
{{< tweet sellorm 1555267341327503367 >}}
```

or

```markdown
{{< tweet user=sellorm id=1555267341327503367 >}}
```

You can obtain the username and status id of a tweet by clicking the "share tweet" button and choosing "copy URL".

This will give you a URL like this one: `https://twitter.com/sellorm/status/1555267341327503367?s=21&t=M0M4IA_KW-zMY1rb2XOWZQ`.
The "user" is the section between `twitter.com/` and `/status`.
The status "id" is everything between `status/` and `?` or the end of the URL, whichever comes first.

See `example.qmd` for a full example.

### Youtube

To embed a Youtube video into your Quarto html document you can use the shortcode like this:

```
{{< youtube VIDEO_ID >}}
```

Where `VIDEO_ID` is the youtube video ID. For example:

```
{{< youtube zk9zHqXm6m0 >}}
```

You can obtain the video ID by inspecting Youtube's URLs.

For instance, in this URL, `https://www.youtube.com/watch?v=zk9zHqXm6m0` the video ID is the part after `v=` in the URL.

See `example.qmd` for a working example.

### Vimeo

To embed a Vimo video in your HTML document use this shortcode, `{{< vimeo VIDEO_ID >}}

Where `VIDEO_ID` is the vimeo video ID. For example:

```
{{< vimeo 22439234 >}}
```

You can get the VIDEO ID from for the URL of the video. For instance, in the URL `https://vimeo.com/channels/top/22439234` the video ID is `22439234`.

See `example.qmd` for a working example.


