<script lang="ts">
    import ArticleList from "../../components/ArticleList.svelte";
    import { createClient, queryStore, setContextClient, getContextClient } from "@urql/svelte";

    const client = createClient({
        url: "http://0.0.0.0:5433/graphql"
    })
    setContextClient(client);

    $: articlesQuery = queryStore({
        client: getContextClient(),
        query: gql`
        query MyQuery {
            allArticles(condition: {codeRef: "aksdjla"}) {
                edges {
                node {
                    title
                    description
                    codeRef
                    image
                    models
                }
                }
            }
            }
        `
    })

    

    console.log(articlesQuery);
</script>


<ArticleList>
</ArticleList>