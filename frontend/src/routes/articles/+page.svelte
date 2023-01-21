<script lang="ts">
    import ArticleList from "../../components/ArticleList.svelte";
    import { createClient, queryStore, setContextClient, getContextClient, gql } from "@urql/svelte";

    const client = createClient({
        url: "http://0.0.0.0:5433/graphql"
    })
    setContextClient(client);

    const articlesQuery = queryStore({
        client: getContextClient(),
        query: gql`
        query MyQuery {
            allArticles {
                edges {
                node {
                    contentType
                    title
                    description
                    textId
                    codeId
                }
                }
            }
        }`,
    });

$: articles = $articlesQuery.data;

</script>

{#if $articlesQuery.fetching}
<p>Loading...</p>
{:else if $articlesQuery.error}
<p>Oh no... {$articlesQuery.error.message}</p>
{:else}
<ArticleList articles={[...articles]}/>

{/if}
