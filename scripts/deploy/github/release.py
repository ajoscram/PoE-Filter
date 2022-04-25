import re
from github.attachments import Attachments

_LEAGUE_PATTERN = "^#[^#]*$"
_TAG_PATTERN = "^##[^#]*$"
_NOTES_START_PATTERN = "^###[^#]*$"

class Release:
    def __init__(self, changelog_path: str, build_dir: str, attachment_dir: str):
        self.attachments = Attachments(build_dir, attachment_dir)
        with open(changelog_path, "r") as file:
            lines = [ line.rstrip() for line in file.readlines() ]
            self.league = self._get_league(lines)
            self.tag = self._get_tag(lines)
            self.title = self._get_title(self.tag, self.league)
            self.notes = self._get_notes(lines)

    def _get_league(self, lines: list[str]):
        return self._get_first_line_and_remove_md(lines, _LEAGUE_PATTERN)
    
    def _get_tag(self, lines: list[str]):
        return self._get_first_line_and_remove_md(lines, _TAG_PATTERN)
    
    def _get_first_line_and_remove_md(self, lines: list[str], pattern: str):
        first = next(line for line in lines if re.match(pattern, line))
        return first.replace("#", "").strip()

    def _get_title(self, tag: str, league: str):
        return f"{tag} Ajoscram's Filter Update - {league}"

    def _get_notes(self, lines: list[str]):
        first_line = next(line for line in lines if re.match(_NOTES_START_PATTERN, line))
        first_line_index = lines.index(first_line)
        
        lines = lines[first_line_index :]

        last_line = next(line for line in lines if line.strip() == "")
        last_line_index = lines.index(last_line)

        notes = lines[: last_line_index]
        notes = [ line.replace("###", "##") for line in notes ]        
        return "\n".join(notes)