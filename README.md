### Project Setup

#### Clone the repository and install project dependencies

```
git clone https://github.com/ygt/sharktank.git
cd sharktank
bundle
```

#### Preview the site locally

```
middleman server
```

Visit `http://localhost:4567` in your browser to view the site. When developing locally, you can make changes in the `source` folder and the page will reload automatically.

#### Create a new blog post

```
middleman article "Post Title Here"
```

Frontmatter tags include: `tags`, `colour` (optional, Solarized colour names, defaults to Sharktank blue), `teaser` (optional, teaser text for post summaries), `short_url` (optional), `published` (optional, true or false, set to false for draft articles).

#### Build (compile) the static site

```
middleman build
```

The static files are stored in the `build` folder. You won't normally need to run this command as the build is handled by the deploy script. Do **not** edit files in the `build` folder - they will get overwritten and pushed to GitHub automatically whenever you deploy.

#### Deploy the site to GitHub Pages

```
git checkout master
middleman deploy
```

The `deploy` script pushes the static site to the `gh-pages` branch on GitHub, and it's live immediately.

You can deploy from any branch, though it's good practice to make your changes on a new branch, then merge into `master` and deploy from there.

#### Documentation

[http://middlemanapp.com](http://middlemanapp.com)
