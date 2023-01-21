<script lang="ts">
    let articles = [
  
    ]
    
</script>
<br>
<h1 class="text-6xl font-semibold">Archive</h1>
<hr class="my-8 h-px bg-gray-200 border-0">
<form>   
    <label for="default-search" class="mb-2 text-sm font-medium text-gray-900 sr-only">Search</label>
    <div class="relative">
        <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
            <svg aria-hidden="true" class="w-5 h-5 text-gray-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
        </div>
        <input type="search" id="default-search" class="block w-full p-4 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500" placeholder="Search Mockups, Logos..." required>
        <button type="submit" class="text-white absolute right-2.5 bottom-2.5 bg-teal-400 hover:bg-teal-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2">Search</button>
    </div>
</form>
<br>
<div class="grid sm:grid-cols-3 lg:grid-cols-6 xl:grid-cols-5 gap-12">
    {#each articles as article}
    <a class="flex" href="articles/{article.articleId?.toString()}">       
        <div class="bg-gray-100 p-6 rounded-xl min-w-full shadow-xl border border-gray-300">
            <img class="rounded-xl" src="./placeholder/profilepic.png" alt="">
            <br>
            <strong><h3 class="text-xl">{article.title}</h3></strong> 
            <p>by ukalus</p>
            <hr class="my-4 h-px bg-gray-200 border-0">
            <p>{article.description}</p>
        </div>
    </a>
    {/each}
    
  </div>