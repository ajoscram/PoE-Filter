from common import dotenv
from github.po import GithubPO
from github.release import Release

# Github release
print("Deploying Github release:\n")

print("Creating temporal release files...")
release = Release("changelog.md", "build", "temp")

print("Logging into Github...")
email = dotenv.vars()["EMAIL"]
password = dotenv.vars()["GITHUB_PASSWORD"]
github_po = GithubPO()
github_po.login(email, password)

print("Publishing the release...")
github_po.publish(release)

print("Closing the browser and deleting temporal files...")
release.attachments.delete()
github_po.close()

print("\nDeployment complete!")