"""
Fetches Google Scholar citation stats for a given author ID and writes
them to _data/scholar.yml so Jekyll can render live metrics at build time.

Run manually:  python scripts/fetch_scholar.py
Automated:     .github/workflows/update_scholar.yml (daily cron)
"""

import os
import sys
import yaml

AUTHOR_ID = "EOsiW3sAAAAJ"
OUTPUT_FILE = "_data/scholar.yml"


def load_existing(filepath):
    if os.path.exists(filepath):
        with open(filepath) as f:
            return yaml.safe_load(f) or {}
    return {}


def fetch(author_id):
    from scholarly import scholarly  # imported here so the script can be imported without the dep

    print(f"Fetching Scholar profile: {author_id}")
    author = scholarly.search_author_id(author_id)
    author = scholarly.fill(author, sections=["basics", "indices", "counts"])
    return {
        "id": author_id,
        "name": author.get("name", ""),
        "citations": author.get("citedby", 0),
        "h_index": author.get("hindex", 0),
        "i10_index": author.get("i10index", 0),
        "publications": len(author.get("publications", [])),
    }


def main():
    existing = load_existing(OUTPUT_FILE)

    try:
        data = fetch(AUTHOR_ID)
        print(f"Fetched: {data['citations']} citations, h-index {data['h_index']}, i10 {data['i10_index']}")
    except Exception as exc:
        print(f"Fetch failed ({exc}), keeping existing values", file=sys.stderr)
        data = None

    result = {**existing, **(data or {})}

    # Hard fallback so the file is never empty
    result.setdefault("id", AUTHOR_ID)
    result.setdefault("citations", 11)
    result.setdefault("h_index", 2)
    result.setdefault("i10_index", 0)
    result.setdefault("publications", 6)

    os.makedirs("_data", exist_ok=True)
    with open(OUTPUT_FILE, "w") as f:
        yaml.dump(result, f, default_flow_style=False, allow_unicode=True)

    print(f"Wrote {OUTPUT_FILE}")


if __name__ == "__main__":
    main()
