require 'octokit'

# Use your GitHub token
client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])

# Repo format: "username/repo"
repo = "leoGH900/Github-examples"

# Step 1: Get latest commit SHA from main branch
main_branch = client.ref(repo, "heads/main")
sha = main_branch.object.sha

# Step 2: Create new branch
client.create_ref(repo, "refs/heads/ruby-branch", sha)

puts "Branch created successfully!"