<h1 class="text-xl ">
  Welcome!
</h1>

In the changelog notes of Sketch 51, Bohemian Coding [quietly announced](https://www.sketchapp.com/updates/) that Sketch now supports “a URL protocol for adding Sketch Libraries backed by RSS feeds to Sketch”.

At Salesforce, we were eager to make use of this feature as we’ve recently been using our [internal design platform Xray](https://medium.com/@almonk/designing-building-our-design-toolchain-740aa290633c) to host and distribute Sketch Libraries across the design organisation. Unfortunately it quickly became apparent there wasn’t a whole lot of documentation around this great new feature and so I’ve decided to write up the notes from our implementation here.

There’s only three things you need to automatically sync a self-hosted Sketch Library seamlessly with Sketch:

* An **XML file** to act as the feed that Sketch will check for updates
* Somewhere **to host** your Sketch Library
* A **link that opens Sketch** and automatically downloads your library

### The XML file

Create a file with the extension .xml using your favourite text editor. Start by using the template below:

Let’s break down the tags quickly: