<script>
  import FeaturedLink from "./FeaturedLink.svelte";
  import Headline from "./Headline.svelte";
  import { Github, Linkedin, Medium, Twitter } from "@icons-pack/svelte-simple-icons";
  import Logo from "./am-logo.svg";
  import Logotext from "./logotext.svg";
</script>

<style>
</style>

<main class="max-w-2xl mx-auto px-4 lg:px-12 py-10 lg:py-20">
  <Logotext></Logotext>

  <p class="dark:text-gray-400 text-gray-800 lg:text-xl mt-8 lg:mt-10">
    I'm a designer working on making computers creative spaces. Today, I'm a Principal Product Designer at <a href="https://hashicorp.com">HashiCorp</a>.
  </p>
  <p class="dark:text-gray-400 text-gray-800 lg:text-xl mt-6 lg:mt-8">
    Previously I worked as a UX Architect at
    <a href="https://heroku.com">Heroku</a>
    &amp;
    <a href="https://developer.salesforce.com">Salesforce Platform</a>
    to improve developer experience. Prior to that, I led design at&nbsp;<a
      href="https://gocardless.com">GoCardless</a>.
     In my spare time, I make apps for the Mac at <a href="https://replay.software">Replay</a>.
  </p>

  <Headline title="Projects" />
  <FeaturedLink
    url="https://replay.software/sleeve"
    title="Sleeve"
    subtext="Your music on your desktop" />
  <FeaturedLink
    url="https://replay.software/bump"
    title="Bump"
    subtext="The easy way to release & update indie Mac apps" />
  <FeaturedLink
    url="https://customboy.alasdairmonk.com"
    title="CustomBoy"
    subtext="A 3D sandbox for designing a custom, original GameBoy" />
  <FeaturedLink
    url="https://umbra.replay.software/"
    title="Umbra"
    subtext="The missing Mac app for Dark Mode" />
  <FeaturedLink
    url="https://almonk.github.io/pylon/"
    title="Pylon"
    subtext="Powerful &amp; declarative layout utilities for CSS" />

  <Headline title="Featured" />
  <FeaturedLink
    url="https://fullstackradio.com/128"
    title="128: Alasdair Monk - Scaling CSS at Heroku with Utility Classes"
    subtext="Full Stack Radio" />
  <FeaturedLink
    url="https://medium.com/net-magazine/blame-your-tools-737fd36b3209"
    title="Blame your tools"
    subtext=".NET Magazine" />
  <FeaturedLink
    url="https://medium.com/salesforce-ux/making-remote-work-b2e2fe53221f"
    title="Making remote work"
    subtext="Salesforce Design Blog" />

    <div class="flex justify-between items-center mt-12">
      <Logo width="45" height="45" class="opacity-30"></Logo>
      <div class="flex items-center">
        <a href="https://github.com/almonk" class="dark:text-gray-400 text-gray-800 mr-4 border-none">
          <Github/>
        </a>
        <a href="https://twitter.com/almonk" class="dark:text-gray-400 text-gray-800 mr-4 border-none">
          <Twitter/>
        </a>
        <a href="https://medium.com/@almonk" class="dark:text-gray-400 text-gray-800 mr-4 border-none">
          <Medium/>
        </a>
        <a href="https://www.linkedin.com/in/alasdairmonk/" class="dark:text-gray-400 text-gray-800 mr-4 border-none">
          <Linkedin/>
        </a>
      </div>
    </div>
</main>
