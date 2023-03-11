<script lang="ts">
    import Three from "../../../components/Three.svelte";
    import { marked } from "marked"; 
    import {createClient, queryStore, gql} from "@urql/svelte";
    export let data;
    const client = createClient({
  url: 'https://api.github.com/graphql',
  fetchOptions: () => {
    return {
      headers: { authorization: 'Bearer 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' },
    };
  },
});
$: folderPath = data.articleFolderName.params.articleName
    $: articleQuery = queryStore({
        client: client,
        query: gql`
        query RepoFiles($folderName: String!){
  repository(owner: "ukalus", name: "ukalusWebsite") {
    object(expression: $folderName) {
      ... on Tree {
        entries {
          name
          type
          mode
          object {
        
            ... on Blob {
              byteSize
              text
              isBinary
            }
                }
        }
      }
    }
  }
}
        `,
        variables: {folderName: "HEAD:articles/" + folderPath},
        pause: folderPath === undefined
    })

    $: articleObject = $articleQuery.data?.repository.object.entries
    console.log(articleObject)
  </script>

  {#if $articleQuery.fetching}
  <p>Loading</p>
  {:else}
    {#each articleObject as entries}
    <br>
    {#if entries.name == "article.md"}
    {@html marked.parse(entries.object.text.replace(/\n/g, "\n "))}
    {:else}
    {entries.object.text}
    <Three threeScript={entries.object.text}></Three>
    {/if}
    <br>
    <br>
    {/each}
  {/if}



  
 
