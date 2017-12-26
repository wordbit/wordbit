# Status Updates

<html>
<head>

<!-- Call up jquery  -->

<script src="/JavaScript/jquery-3.2.1.min.js"></script>

<!-- Call up mastodon api and widget  -->

<script type="text/javascript" src="/JavaScript/mastodon.widget.js"></script>
<script>
$(document).ready(function() {
// jQUERY is required!
  var mapi = new MastodonApi({
    target_selector  : '#myTimeline'
    ,instance_uri    : 'https://wandering.shop'
    ,access_token    : '32f63bc22ce9927b919fc670976f812781c7ce644d0a086be6d076c2a71f3c6d'
    ,account_id      : '20307'
    // optional parameters
    // ===================
    // - status max
    // ,toots_limit     : 5
    // - if you are using font-awesome:
    // ,pic_icon        : '<i class="fa fa-picture-o"></i>'
    // or a picture
    // ,pic_icon        : '<img src="mypicicon.gif" />'
  });
});
</script>

</head>
<body>

<div id="myTimeline" class="mastodon-timeline mastodon-timeline-light"></div>

</body>
</html>
