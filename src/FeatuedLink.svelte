<script>
  export let title, url, subtext
</script>

<div class="lg:text-xl block mt-2 mb-4 items-start">
  <a href={url} class="mb-1 text-gray-800 dark:text-gray-300 ">
    {title}
  </a>
<div class="text-gray-400 ">{subtext}</div>
</div>
