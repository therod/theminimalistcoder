---
title: "Escaping the YouTube black hole"
description: "YouTube can be a blessing and a curse at the same time. Reclaim your time with this simple hack."
created_at: '2020-03-06'
updated_at: '2020-03-06'
published: true
---

We all know the phenomenon: You start watching a YouTube video, only to find yourself wondering how the fuck you ended up watching a guy build a [primitive forge blower](https://www.youtube.com/watch?v=VVV4xeWBIxE) 3 hours later.

My friends and I like to call this “falling into the **black hole of YouTube**”.

Years back I used to block YouTube and other distracting sites completely using the [hosts](https://en.wikipedia.org/wiki/Hosts_(file)) file on my computer. But after a while I started missing the brilliant [talks](https://www.youtube.com/watch?v=f-wWBGo6a2w) and [documentaries](https://www.youtube.com/watch?v=1t0CkzD-Bv8) that can be found next to all of the cat videos.

I started looking for a solution that would allow me to watch specific videos, while minimizing the chance of getting sucked into said black hole.

The solution I came up with is very straightforward and comes in the form of a Chrome plugin called [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm/related?hl=en). It blocks Ads by default but also **allows you to block specific HTML elements on any web page**.

*My YouTube startpage before...*

![YouTube home before](https://theminimalistcoder.s3-eu-west-1.amazonaws.com/public/youtube-index-before.jpg)

*...and after.*
![YouTube home after](https://theminimalistcoder.s3-eu-west-1.amazonaws.com/public/youtube-index-after.jpg)

*YouTube video before...*
![YouTube video before](https://theminimalistcoder.s3-eu-west-1.amazonaws.com/public/youtube-show-before.jpg)

*...and after.*
![YouTube video after](https://theminimalistcoder.s3-eu-west-1.amazonaws.com/public/youtube-show-after.jpg)

The plugin offers a visual element picker – no need to kow any HTML to be able to use it.

If you want to use my YouTube setup then just add this code to the *“My filters”* section in the settings pane of uBlock Origin.

<script src="https://gist.github.com/therod/cda3f062c58a471fae35e43df5d3df5b.js"></script>

This method isn't 100% bullet-proof since YouTube will still show you recommended videos at the end of each video.

The same hack can be used on other sites as well. It's a great way to block the distracting timeline on Facebook and LinkedIn for example.

Enjoy your distraction-free Internet!
