<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <title>${content.windowTitle!content.title!}</title>
    <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/hello-magnolia//webresources/css/hello-style.css" media="all" />
    <script>
      fillDailyQuote = (category) => {
        const url = "http://quotes.rest/qod.json?category=" + category;
        fetch(url)
          .then(res => res.json())
          .then(quotes => {
            const quote = quotes.contents.quotes[0];

            const h2 = document.getElementById("titleAndDate");
            h2.innerHTML = quote.title + " for " + quote.date;

            const quote = document.getElementById("quote");
            quote.innerHTML = quote;

            const author = document.getElementById("author");
            author.innerHTML = quote.author;

            const img = document.getElementById("bkgimg");
            img.src = quote.background;
            img.alt = quote.category + " photo";

            const tags = document.getElementById("tags");
            tags.innerHTML = quote.tags.map(e => return "#"+e).join(" ");
          })
      }
    </script>
  </head>
  <body>
    <div class="container">
      <h1>${content.windowTitle!content.title!} works!</h1>
      <div class="main">
        [@cms.area name="main"/]
      </div>
    </div>
  </body>
</html>