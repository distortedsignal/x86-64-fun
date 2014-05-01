x86-64-fun
==========

Having some fun with x86-64 assembly.
-------------------------------------

After reading part of [this blog post](http://nickdesaulniers.github.io/blog/2014/04/18/lets-write-some-x86-64/) about working in x86-64 assembly, I felt the seductive call of my electrical engineering past to write code at **the lowest level possible**. As such, I fired up my Linux VM and set to work. What you're seeing here are the results that I want you to see. Are these complete? Probably not. Along the road to learning, there are many humiliating failures, and I think that I might prefer to keep those hidden. If you're intrigued, most of this code should run on any recent Fedora install (20+), and it might work on any Red Hat Linux install, so spin up a machine, check out the code and tinker! Have fun!

Differences from article
------------------------

I think that Nick did a great job with the article I posted above, but I'm currently having some different experiences. The first difference that I've found is that the stack pointer isn't misaligned. I don't know why this is different on Linux vs. OSX (I'm going to assume that he's using OSX from the linking command that he's using), but, as you can see, I've commented out the line that subtracts 8 from the stack pointer, and calling my custom build script and running the results works fine. No segfaults for me.
