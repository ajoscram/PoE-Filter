from common import dotenv
from github.po import GithubPO
from github.release import Release

print("Deploying Github release:\n")
print("Creating temporal release files...")
release = Release("changelog.md", "build", "temp")

print("Logging into Github...")
username = dotenv.vars()["GITHUB_USERNAME"]
password = dotenv.vars()["GITHUB_PASSWORD"]
github_po = GithubPO()
github_po.login(username, password)

print("Publishing the release...")
github_po.publish(release)

print("Closing the browser and deleting temporal files...")
github_po.close()
release.attachments.delete()

print("Release complete!\n")

# initialize poe po
# log into poe (requires manually clicking the button)
# finalize github po