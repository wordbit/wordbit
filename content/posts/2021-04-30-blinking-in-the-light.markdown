+++
date = 2021-04-30T18:00:00Z
draft = true
slug = "blinking-in-the-light"
title = "Blinking in the light"

+++
Spring has arrived in full force. The temperature magically jumped up ten degrees in the past week. One day you're huddling inside sipping Coffee in the gloom in Gotland-wool slippers, and the next you're paddling on the lake in boardshorts and bare feet. Incredible.

It's enough to make you forget that the variants are also out in full force. And yet, as the blazing Spring sun has burned away the darkness, there is also hope that the vaccination rollout will continue to curb the rising covid tide. Today I registered my interest in receiving the vaccine on the government website, so that's a small win I guess.

I don't mind the Winter too much because I like cozy blankets, hot chocolate, and Netflix. I don't particularly like sunscreen, allergies, and mowing the lawn. But I'd forgotten how good warm sun feels on bare skin. The colourization of the landscape as it transforms from brown to vivid green is a real mood booster too.

With the warm weather breathing new life into the land, my mind has turned to Spring-cleaning projects - this blog being no exception. It's time to get meta.

<!--more-->

For the [past six years]({{< relref "2015-10-27-apple-ban.markdown" >}}), I've been using a Hugo static site hosted on GitHub Pages. But the workflow has been cumbersome - quite frankly, I don't know how I put up with so much friction for so long.

My current workflow goes like this: I write the posts in Google Docs, which doesn't have native markdown support. So, writing in plain text forces me to constantly look up code snippets for more complicated actions. When I'm done, I use BBEdit to create a text file in the cloned repository on my MacBook Pro. At this point, I edit and revise as necessary. But these revisions do not, of course, sync with the original versions on Google Docs.

I have to use my MacBook Pro to publish because my local Hugo deployment must be run on the command line with the text files on my hard drive. But it isn't great being tied to your physical computer in our convenient online world. What if my laptop died on me? I'd be hooped.

It's not like I would ever go back to Wordpress, or even more unthinkably, Tumblr. But I was starting to think that an integrated WYSIWYG text editor and online deployment would be nice. So, I decided to make it happen.

It wasn't exactly easy. I'm not a software engineer and static sites have to be hacked together with various developer tools to get them working. There's no turnkey solution out there. There's certainly no decent documentation. And I'd kind of forgotten how I got my blog working in the first place. Six years is a long time after all.

I did some research, even watching a two-hour YouTube video with about four views from a painfully-nerdy programmer. To be clear, I didn't watch the whole thing - I'm not a masochist.

Anyway, for content management, I stumbled on [forestry.io](https://forestry.io/) and after some tinkering, got it working nicely. However, in my naiveté, I didn't realize that the remote Hugo server in forestry could only host previews - not deploy the site. Basically, I could see what the blog post would look like, but not actually publish it.

So, the research continued. At least the integrated WYSIWYG text editor was in place.

Some time later, after realizing that I could somehow use [GitHub Actions](https://github.com/features/actions) to automatically deploy my Hugo site, I set to work once more. I found [this post](https://ruddra.com/hugo-deploy-static-page-using-github-actions/) most useful, so thank you Mister Arnab Kumar Shil - I don't know you but you're the bomb.

After troubleshooting multiple failed deployments, I finally managed to get the workflow working with the right Hugo version (I have to use an older version because my modified duct-taped theme crashes the deployment on newer versions).

But because I was still fumbling in a fog of ignorance like a total noob, I overwrote the root of my repo with the public files, thus deleting all my source files, including the forestry CMS I'd just set up, and the workflow file itself. After discovering that you cannot revert a commit on the online version of GitHub (why, damn you, why?), I downloaded the Desktop version onto my recently-acquired PC and rolled the changes back, only to have the workflow re-trigger and wipe it all out again in a nightmare loop - I couldn't edit the workflow file because as I said earlier, it deleted itself as part of the workflow.

Anyway, long story short, I disabled GitHub Actions, figured out that I should deploy to the gh-pages branch in my repo (not the root!), re-enabled Actions, and finally got it all working perfectly. I can now write drafts in forestry and publish them online on any browser anywhere. Even on mobile. Magic!

Well, there was a lot of mentally-sweaty work in getting the magic to happen, but still - magic! Sorcery!

That was actually a lot of fun. I enjoy learning new things; I miss it. More fun is on its way next week with Apple's _Spring Loaded_ event. Now that my nifty workflow is up and running, I'll be sure to write a brief post with my thoughts on whatever they announce.