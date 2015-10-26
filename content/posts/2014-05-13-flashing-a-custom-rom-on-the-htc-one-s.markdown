---
author: wordbitmaster
comments: true
date: 2014-05-13 00:33:00+00:00
layout: post
slug: flashing-a-custom-rom-on-the-htc-one-s
title: Flashing a custom ROM on the HTC One S
wordpress_id: 1193
---

I've been lamenting the dearth of software upgrades on my HTC One S [for a while now](http://wordbit.com/state-of-android/). Over the past year or so I've been happy to simulate a stock experience by using Nova launcher, along with some custom UI tweaks. But under the hood, a sense-infused Jelly Bean 4.1.1 was starting to show its age. Sluggish response times were easily solved through a factory reset, but this wasn't nearly satisfying enough. And to top it off, [4.1.1 is the only software version vulnerable to the heartbleed bug](http://mashable.com/2014/04/11/devices-running-android-4-1-1-vulnerable-to-heartbleed/). To give HTC some credit, they are preparing a patch, but who knows when it will trickle down through their torturous certification process.




So, I've decided to wade into the murky waters of the custom ROM scene. All I can say is that, for a newb like myself, the whole process is more than a little daunting. I don't want to get into the gritty details of flashing in this blog post, because there are plenty of places, such on [Android Police](http://www.androidpolice.com/2010/05/08/complete-guide-how-to-flash-a-custom-rom-to-your-android-phone-with-rom-manager-full-backup-restore/), where you can get start learning. What I want to talk about are some issues specific to HTC One S owners, as well as a high-level walkthrough of what is required. So, if you own an HTC One S and are a beginner interested in flashing a custom ROM, read on. If you're not, then I suggest you stop reading and find something fun to do.<!-- more -->




First of all, you have to unlock your bootloader. Fortunately, HTC has [an official unlocking method](http://www.htcdev.com/bootloader), which you can use if you sign up as a developer. Unlocking the bootloader using this official method will unlock the boot partition so that you can basically install a new operating system. However, all so-called "black box" partitions will remain locked, such as the radio, which allows you to make phone calls. You don't want to mess with these sensitive partitions because one wrong move will irrevocably brick your phone. The security layer we are talking about here is called S-ON. Unlocking all partitions requires S-OFF. Some ROMs, especially leaked unsigned versions of HTC sense-based ROMs, require S-OFF. But, unless you really know what you're doing, I don't recommend going S-OFF, which requires an alternate and more dodgy bootloader unlock method.




Secondly, you have to consider your HBOOT version, which is basically the bootloader version you currently have. Some ROMs require you to upgrade your bootloader, which will add more torture to an already complicated procedure. Fellow newbs, save yourself the headache and just stick to version 2.15, which your One S most likely has.




Bearing these two factors in mind - leaving your phone S-ON and with HBOOT 2.15, the number of ROMs you can actually flash are narrowed down to a handful. Of these, I'd say Cyanogenmod (CM for short) is the safest bet. They've just completed [a round of investor funding](http://phandroid.com/2013/12/19/cyanogenmod-funding/) and are poised to release the [OnePlus One](http://oneplus.net/), the first phone to run CM as its out-of-the-box ROM. These developments are great news because they will spur CM developers to build a more stable and robust platform and deal with bugs on a more aggressive schedule.




I don't need to tell you the benefits of ongoing software support, as it's obvious that running Kit Kat on your HTC One S is pure awesome sauce, as well as getting on top of the latest security updates. However, because CM does not include HTC sense, you will have to make some compromises. Sense isn't actually a bad skin and the sense architecture actually dovetails quite nicely with the hardware. For example, the stock HTC camera app makes great use of the dedicated imaging chip with features like burst mode. And don't kid yourselves, burst mode apps don't save the pictures in high resolution or are as rapid-fire as the HTC version. You'll lose Beats audio, which is actually a decent bass booster for your music apps. You'll also lose the proprietary app for your FM radio. Unfortunately, the HTC FM Radio API is not available to other apps, so if you use the radio a lot then CM isn't for you.




Fortunately, there are some alternatives you can try to get the experience you want - google has recently decoupled their camera app from the Android Open Source Project (AOSP), and it is now available in the Play store. It is pretty horrible right now, at least on the One S, but I expect they'll continue to improve the app and you now have the benefit of seamless updates through google play services. I've also been trying out Snap Camera, which is slightly better than google camera, and only costs $2. As a replacement for Beats Audio, you could try out the DSP Manager within CM itself , an equalizer that offers a bass boost. And although you may can find a pricey FM Radio app on the Play store, with google music all access now finally available in Canada, who needs old-fashioned over-the-air radio?




Ready to go for it? If you're ready to flash CM on your One S, there is a big developer community out there willing to help on the forums. But in case you're having a hard time deciphering the nerd-talk, I'm going to walk you through the basic process here. You'll still need to do your homework though if you're just starting out. Let's pick up where we left off - I'll assume you've unlocked the bootloader through the official HTC method and have stuck with HBOOT 2.15. The next steps are as follows:




1. You need to install a custom Recovery so that you can back up and restore your ROMs. A custom Recovery is a program that you install in your "recovery" partition so that if something goes horribly wrong, you still have a place to go to restore a backup, or wipe your data or whatever and try again. I would go with ClockWorkMod Recovery because they have been around the longest and seem to update more regularly than the others. You can flash it by using Fastboot, which you presumably installed when you unlocked your bootloader.




2. Download the CM zip file that you want. I recommend using the monthly snapshot, which is labelled as an "M" release. The "M" releases are now considered "stable", with each M release incorporating bug fixes from the previous release. Don't bother with the nightlies unless you really get into this flashing thing and want to be bleeding edge all the time.




3. Because your HTC One S is S-ON, you'll need to take the extra step of extracting the file boot.img from the CM zip file.




4. As google apps don't come with CM anymore, you'll have to download a separate "Gapps" zip so that you flash onto the boot partition as well. Or you could just download the google apps you want from the Play store later, although this will eat into your storage. Just go with the CM-recommended Gapps. I've read that the Paranoid Android (PA) Gapps has a more complete set of apps, but as CM is a fairly large install, PA Gapps may not fit on the boot partition.




4. OK, you're ready to flash! The actual flashing process can be a heart-stopper, so I'm going to spell it out. Please note that the following steps are how I did it - you can also flash the boot.img file _after_ you've copied the zip files across. Once you've flash that boot.img file there's no going back because your phone won't work until you flash the ROM zip file.




a. Boot your phone into fastboot mode.




b. Flash the boot.img file you extracted earlier by typing  "fastboot flash boot boot.img".




c. Boot your phone into recovery mode.




d. When you are in ClockWorkMod, go to "mounts and storage" and mount your USB drive.




e. Your phone will appear as a drive in Windows so you can just drag the CM zip file and the Gapps zip file into the root directory on your phone.




f. Go to "backup and restore" and backup the stock ROM in case you change your mind and want to go back to the way things were.




g. Go to "wipe data/factory reset"  and wipe all your user data.




h. Select "install zip from sdcard" and select the CM zip file you copied across earlier.




i. Perform the above step again for the Gapps file.




j.When you're done, select "reboot system now".




That's it! You'll reboot into Cyanogenmod, where you can enjoy some tasty Kit Kat on your One S. From my experience so far, there aren't any showstopper bugs in the latest M release - battery life is fantastic and you can install the Google Now launcher for that ultimate stock Android experience. I'm glad I finally took the leap - being stuck on 4.1.1 is just too heartbreaking for a phone that is very capable of rocking the latest and greatest.
