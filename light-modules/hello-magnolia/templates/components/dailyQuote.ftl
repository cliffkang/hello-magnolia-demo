[#if content.category?has_content]
  <script>
    fillDailyQuote(${content.category});
  </script>
[/#if]

<div class="dailyQuote">
  <h2 id="titleAndDate"></h2>
  <blockquote id="quote">
    <cite id="author"></cite>
  </blockquote>
  <img
    id="bkgimg"
    class="img-responsive"
    src=""
    alt="">
  <div id="tags"></div>
</div>
