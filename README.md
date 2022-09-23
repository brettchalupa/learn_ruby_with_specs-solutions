# Learn Ruby with Specs 💎

An interactive, test-driven course to learn the basics of Ruby with RSpec.

## Introduction

There are so many ways to learn how to code, from reading books to screencasts to taking classes. I've found that I learn best when there's a bit of autonomy for me to research and write the code on my own but with a bit of support and guidance.

That's what _Learn Ruby with Specs (LRWS)_ is all about. Teaching you the basics of the language, driven by specs. What this means it that the answers aren't provided. You need to investigate and learn on your own. 🕵️‍♀️

By searching line and learning, you'll better internalize what you're learning. The specs will also ensure correctness—that the code you're writing does what you intend it to. Through this process too, you'll gain familiarity with the way specs are written.

### Prerequisites

If you are absolutely brand new to programming, I would not start with LRWS because it requires a few things: using the command line, understanding specs/tests, and what to search for online. The specs are guiding and helpful, but they are, at the end of the day, just code. Learning how to code from scratch by reading the specs could be a bit challenging, even though RSpec, the library used in this course, reads a lot like the English language.

So some prerequisites this assumes:

- A little bit of time spent coding before, [The Ruby Quickstart](https://www.ruby-lang.org/en/documentation/quickstart/) i helpful here
- Comfort with running commands via the Terminal, Shell, or Command Prompt
- An understanding of the difference between code and tests/specs. Programmers write tests (a.k.a. specs), which is code that tests what other code does. This help ensure everything is working correctly.

### Why Ruby

Ruby's natural syntax is quite intuitive. It's a mature, multi-purpose language with lots of resources out there. I've been using it for over 10 years full-time, and while it has its shortcomings (as all languages do), it's worthwhile and a lot of fun to use!

### Why RSpec

[RSpec](https://rspec.info) is a behavior driven design (BDD) testing framework for Ruby. If all of that means nothing to you, that's okay. Really. It's just a library (third-party code written by others that we can use, a.k.a. gem in Ruby's parlance) that helps us write tests for our code using an approach that allows us to describe in details words what our code does and why.

Ruby has its own baked-in testing library, as most languages do. It's called `Test::Unit`. It certainly works and does the trick. But every single place and codebase I've worked in has used RSpec. I'm not sure if that's anecdotal, but it's what I'm most familiar with, and it allows for a level of verbosity with describing the code's behavior that I think will be particularly helpful for someone learning RSpec.

## Get Started

0. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/), I use and prefer [RVM](https://rvm.io)
1. [Use this repo as a template for youself](https://github.com/brettchalupa/learn_ruby_with_specs/generate), as you'll need your own repo to add your code to
2. Clone your new repo
3. Install the needed dependencies with with bundler: `bundle install`

Alternatively, if you aren't using Git, you can [download an archive of the project](https://github.com/brettchalupa/learn_ruby_with_specs/archive/refs/heads/main.zip) and work from that.

## Run the Specs

In order to run the specs, use this command:

```
bin/rspec
```

That will run all of the tests in all of the lesson folders. They'll all fail because you haven't written any code yet. You'll have completed this course when all of the specs pass.

Seeing a bunch of failing tests isn't very helpful, so here's how to use this proejct and progress through the lessons.

## Course Structure

Each lesson is organized into its own folder, prefixed with the number of the lesson. For example, `01_hello_world`. This is the first lesson.

Within an lesson is one or more files ending in `*_spec.rb`. These are RSpec test files, which contains the failing specs that you need to make pass. Also included are any empty Ruby files that will contain the actual code you write. More on that in a second. So, for example:

```
learn_ruby_with_specs(main+) $ ls 01_hello_world/
hello_world_spec.rb
hello_world.rb
```

- `hello_world_spec.rb` contains the test code that I've written, which you won't have to change at all.
- `hello_world.rb` is the blank Ruby file in which you'll write the code to complete the lesson

## Run the Specs for a Given Exercise

You can run the specs for a given lesson by targeting the folder, example:

```
bin/rspec 01_hello_world
```

## Run the Next Failure

RSpec has a convenient way of only running the next failing spec so you can progress one-by-one to make the tests pass. Do this by running:

```
bin/rspec --next-failure
```

## Process

Progress through each lesson by making the tests pass. You'll write Ruby code in the empty Ruby files, run the tests, and then make adjustments if the tests still fail.

Once an entire directory's specs pass, that lesson is is complete. ✅

The course is complete when `bin/rspec` succeeds for all lessons. 🎉

## Run Specs for a Given Exercise

You can run RSpec against a given lesson folder with: `bin/rspec PATH_TO_FOLDER`. So, for example:

```
bin/rspec 01_hello_world
```

Will run the specs for the first lesson.

## Tips & Advice

- 🥽 Read the specs, then re-read them if you are stuck
- 🔎 Read the errors and stacktrace, this is an important skill; the errors are often quite helpful
- 💻 Search online; this mirrors the actual process of coding where you get stuck and need to learn more

## Resources

- Chat room/community
- Ruby fundamentals
- [My screencasts](https://www.youtube.com/c/Monoso/featured) — I make programming screencasts, specifically about Ruby and RSpec. Playlists that might be of interest:
  - [Test Driven RSpec](https://www.youtube.com/playlist?list=PLr442xinba86s9cCWxoIH_xq5UE9Wwo4Z) — series on RSpec
  - [The Fundamentals of Ruby](https://www.youtube.com/playlist?list=PLr442xinba85DO691UMttOgaWVKVEkIZx) — general Ruby programming topics

## Solutions

TODO: create solutions repo

## Getting Updates

I plan to add new lessons to this course from time to time. The best way to get notified is to [watch the project on GitHub](https://github.com/brettchalupa/learn_ruby_with_specs). 👀 This will notify of you new releases.

When new releases are made, you can fetch the latest version by following these steps:

1. In your course codebase, ensure you have an `upstream` remote pointing to the source repository: `git remote add upstream git@github.com:brettchalupa/learn_ruby_with_specs.git`
2. Fetch the latest code from `upstream`: `git fetch upstream`
3. Merge in the latest code into your repo: `git merge origin/upstream`

That'll pull in the latest changes, which will be new lessons and any adjustments to existing ones. You can then run the specs with `bin/rspec` and work on those new lessons.

## Misc

### Notes on RSpec Style

There are some potentially contentious decisions for style when it comes to the RSpec found in this project. They are generally made with intention though.

#### `subject` and `described_class`

In order to make the code easier to change and refactor, RSpec's `subject` to easily call out to the object under test is used, typically an instantiated `described_class` instead of repeating the class throughout. I've found that DRYing up the instance under tests initialization makes it less likely to mess it up or use the wrong class when you only do it once. Plus it's easier to change then.

#### Multiple expectations even in unit tests

I don't follow a hard and fast rule of one expectation per unit test. That's generally followed, but there are times where that makes less sense. How I instead think about it and how it's reflected in these specs are that non-obvious test cases require their own examples and language to describe them.

Let me use an example to be more clear. Let's say there's an example testing an exception is raised in Ruby when an argument is passed that is `nil` or empty string `""`. I'd probably just test both of those in the same example if they have the same output.
