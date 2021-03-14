---
title: "Rails Girls Zurich 2012, thoughts"
description: "My thoughts and insights on coaching at Rails Girls for the first time."
og_image: 'https://theminimalistcoder.s3-eu-west-1.amazonaws.com/public/unnamed.jpg'
created_at: '2012-11-09'
updated_at: '2012-11-09'
published: true
---

Last weekend I attended the first Rails Girls event in Zurich,
Switzerland as a coach. I was blown away by the amazing organisation, 
huge amount of motivation and passion.After getting over my hangover on Sunday, 
I instantly knew that I wanted to stay involved and try to improve the quality 
of future Rails Girls happenings around the world. This blog post is my first 
try at improving the Rails Girls movement which is already pretty strong.

While the organisers and coaches did a great job, there were still
some things that bothered me personally and I think could be improved.
This feedback is strictly targeted at the event that happened on
November 2. and 3. in Zurich. I am aware that every Rails Girls event
is unique and different in each country, so these issues may be completely
irrelevant if compared to any other event.   

<b>Disclaimer</b>: The opinions written down here are my own. You don’t have
to agree with them and if that should be the case, please leave a comment!
I would love to hear your opinions and (constructive) critics!

>Our aim is to give tools and a community for women to understand
technology and to build their ideas.
We do this by providing a great experience on building things and by
making technology more approachable.
Learn sketching, prototyping, basic programming and get introduced to
the world of technology.

These are the three first sentences taken straight from railsgirls.com
that sum up the basic idea behind the event, serving as a reminder.
A reminder on which the following 4 points are based.

<b>I am reading the Lean Startup, you probably never heard of it:</b>
I know, talk about startups is completely “hip” at the moment and you
can’t attend a single technology event without at least one guy
preaching
about the Lean Startup or other business related bullshit. Most of
these guys think that programmers don’t spend enough time sleeping
with business
books under their pillow, which is the reason why their products
almost always fail. So let’s all preach about this shit at your next
Rails Girls event and show everyone how it’s done, right!?

No!

One day is already short as it is and we should focus on explaining to the girls
how they can use technology to bring their own ideas to life and not
how a target market is best evaluated.
If anyone wants to read about startup specific stuff they can read Hacker news during
the breaks for all that I care.

By leaving the buzz talk at home for once we get a lot more time for the things that matter
like a basic explanation of what exactly it is that we'll be doing today.
This event for once isn't about startups, it's about programming!

Also for the love of sanity, leave Value Proposition or other
buzzwords out of the keynote. Try to show the girls what simple
techniques they can use that help them build their own ideas and not some kind of elevator pitch.

<b>So what is a Web application anyway and how do I get it running on my iPhone?</b>
Let’s face it, most of the attendees have never programmed before.
Hell most of them don’t even know how the Internet works. Which is
completely fine - but
why don’t we start with explaining the basics first? Most of you might
argue now that one day is too short to explain concepts like how a web
application works
or what a framework is anyway and we should focus our energy on just
creating a product and just hope that they may understand it later.
I humbly disagree! There is actually a lot of time to explain the
basic concepts, we just have to take a little shortcut:

Have you ever heard of the 5 year old method? The basic idea behind
this method is to try to explain concepts (like how the internet works
for example) in a way
that even a five year old could “get it”. One great example of this
method was the German show Die Sendung mit der Maus that tried to
explain complicated concepts
in a simple, playful and visual way. Just quickly set aside 9 minutes
of your time and watch [this video](http://www.youtube.com/watch?v=vfXsdbnPjX4) to get a better idea
of what I mean:

By using simple metaphors like the one shown in the video it can be
drop-dead easy to explain a lot of things that were left untouched in
a short period of time.
Here are some examples of stuff that I think we should definetly talk about:

<b>What exactly is a web application? And how does it work:</b> Explain Client / Server architecture, the internet as static pages, browsers as gateways to these static pages etc…


<b>What exactly is a Framework:</b>
Explain Rails as a Toolbox with different tools (Gems) inside of it. The Rails Toolbox was put together by one guy for building web applications.
Explain what kind of other Toolboxes exist. (Cocoa for building iPhone Applications, Java for building business applications, etc...)
Explain that the tools inside these Frameworks are mostly built using a certain programming language.
In the case of the Rails Framework the programming language is called Ruby, hence: Ruby on Rails.

Still not getting the Idea? Here’s a simple example that I came up with in a few minutes:

<b>Explaining the web using a restaurant:</b>
You are sitting at a table in a fancy restaurant. The waiter hands you the menu and asks what you would like to eat.

In this scenario the menu is your web browser, the waiter is the communicator (aka. Internet) between you and the chef which is the “Web Server” that processes
your requests.

> So you tell the waiter that you would like the vegetarian dish by pointing on the menu. The waiter remembers your request and promptly delivers it to the chef in the kitchen. He then starts preparing your dish and after a (hopefully) short period of time, the waiter will bring back the finished dish ready to be consumed.

This can easily be translated into:   
> So you tell the “internet” that you would like “a specific page” by
pointing/clicking on the “URL in your browser”. The “internet”
remembers your request and promptly
delivers it to the “Web Server”. It then starts preparing your
“specific page” and after a (hopefully) short period of time, the
“internet” will bring back the “specific page”
ready to be consumed.```

Ok, now you're all like:
Meh, you just made a simple concept even simpler, how does that help anyone?

If there is one thing that I have learned in life, it is this simple fact:

>The most obvious things to you may not be so obvious from the
perspective of other people.

Always try to remember that! Also don’t try to find the perfect
metaphor in every situation. It doesn’t matter if it isn’t 100%
accurate. That’s still better than staying
100% accurate but nobody can grasp what the fuck you’re talking about.

<b>Help! Someone mixed up the schedule!</b>
One thing that had me puzzled was the order of the different exercises.
Why do we throw around words like “Framework”, “Git”, “Ruby”, “CRUD”,
etc. right after the start of the event when we only start to somewhat
explain them later on?
An order like this would make way more sense:

<b>1)</b> Tell the girls to write down all kind of acronyms they know but
don’t really understand.

<b>2)</b> Start with the Bento Exercise and instead of using predefined
acronyms, let them try to place their own acronyms into the Bento box
with the help of a coach. Since these
are acronyms that they probably hear every day it will be more
interesting to finally know what they mean and where exactly they
belong.

<b>3)</b> Start with a basic introduction using the techniques in point 2 of
this post. Explain why exactly it is called Rails Girls, what a
Web Application is and how it works.

<b>4)</b> Build the different teams and start creating stuff!

By keeping the introduction short and sweet you give the main target
group (girls that have never programmed before) a nice introduction
that helps them understand what exactly it is that they’ll be
building. I didn’t notice this until I talked to one of the girls
afterwards but most people have trouble creating simple metaphors for
complicated concepts. So this way of structuring things could give the
girls with a more advanced background an inspiration on how they could
convey complicated concepts in a more simplified form, which is a huge
plus because you are now basically teaching how to convey complicated
concepts in a more simplistic fashion.

Also by doing the programming exercise after the group introduction
you won’t pull the groups out of THE ZONE&#8482; so that they can
keep working open ended.
This was a huge bummer for our group since we achieved an amazing
state of flow but got interrupted because we had to do the bento
exercise which at this point was more disturbing than informative.

<b>Rails Girls will be called Java Girls from today on!</b>
Not really. But why exactly is it called RailsGirls? This important
philosophical fact also got lost during the event.
I think it’s not called Rails Girls because of the Rails Framework but
because of the awesome community surrounding it.
I would probably be using Django and Python if it wasn’t for things
like why the lucky stiff, Friday hugs, Zombie Screencasts and the
general (lovely)
weirdness surrounding the Rails & Ruby community. This is probably one
of the main reasons why I fell in love with Ruby & Rails in the first
place.
I want to share that love with everyone at Rails Girls, and so should you! So let's quickly recap.

<b>1)</b> Leave the buzz talk at home and focus on programming for once.

<b>2)</b> Try to explain things in a simple way using metaphors or other similar techniques.

<b>3)</b> Switch the schedule around so that there are no interruptions during the building part of the day.

<b>4)</b> Show how amazing the community around Ruby & Rails is and emphasise why exactly it is called Rails Girls.

These are the main four points that I have been
pondering over the past days. I'd love to hear your opinion.

Thanks for reading and see you at the next Ruby/Rails event!
