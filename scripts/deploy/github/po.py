from common.po import PO
from github.release import Release, Attachments

class GithubPO(PO):
    def login(self, email, password):
        self.driver.get("https://github.com/login")
        self._write("#login_field", email)
        self._write("#password", password)
        self._click(".btn")
    
    def publish(self, release: Release):
        self._move_to_new_release_page()
        self._set_tag(release.tag)
        self._set_title(release.title)
        self._set_notes(release.notes)
        self._set_attachments(release.attachments)
        self._submit()

    def _move_to_new_release_page(self):
        self.driver.get("https://github.com/ajoscram/PoE-Filter/releases")
        self._click("a.btn")
    
    def _set_tag(self, tag: str):
        self._click("#tag-list")
        self._write("div.SelectMenu-filter > input", tag)
        self._click("label.text-bold")

    def _set_title(self, title: str):
        self._write("#release_name", title)

    def _set_notes(self, notes: str):
        self._write("#release_body", notes)

    def _set_attachments(self, attachments: Attachments):
        self._write("#releases-upload", attachments.filter_filepath)
        self._write("#releases-upload", attachments.subfilters_filepath)
        self._wait_for("li.p-2:nth-child(3)[data-state='uploaded']")

    def _submit(self):
        self._click("button.js-publish-release")
        # wait for an element on the next screen
        self._wait_for("span.css-truncate > span:nth-child(2)")