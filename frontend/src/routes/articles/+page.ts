import fs from "fs"

export async function load(){
    
    const text = fs.readFileSync("static/blogPost/linearRegression/article.md")
    return{
        body: "hello world"
    }
}