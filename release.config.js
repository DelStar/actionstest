module.exports = {
   branches: "master",
   repositoryUrl: "https://github.com/DelStar/actionstest",
   plugins: [
     '@semantic-release/commit-analyzer',
     '@semantic-release/release-notes-generator',
     '@semantic-release/git',
     '@semantic-release/github']
}