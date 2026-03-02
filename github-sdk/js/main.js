import { Octokit } from "@octokit/rest";

const octokit = new Octokit({
  auth: process.env.GITHUB_TOKEN,
});

const owner = "leocoolmitra";
const repo = "Github-examples";
const baseBranch = "main";
const newBranch = "feature-from-codespace";

async function createBranch() {
  try {
    const { data: refData } = await octokit.git.getRef({
      owner,
      repo,
      ref: `heads/${baseBranch}`,
    });

    const latestCommitSha = refData.object.sha;

    await octokit.git.createRef({
      owner,
      repo,
      ref: `refs/heads/${newBranch}`,
      sha: latestCommitSha,
    });

    console.log("Branch created successfully!");
  } catch (err) {
    console.error(err);
  }
}

createBranch();