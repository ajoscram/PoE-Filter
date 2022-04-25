import dotenv

from github.po import GithubPO
from github.release import Release

release = Release("changelog.md", "build", "temp")
username = dotenv.vars()["GITHUB_USERNAME"]
password = dotenv.vars()["GITHUB_PASSWORD"]

github_po = GithubPO()
github_po.login(username, password)
github_po.publish(release)
github_po.close()

release.attachments.delete()

# initialize poe po
# log into poe (requires manually clicking the button)
# finalize github po