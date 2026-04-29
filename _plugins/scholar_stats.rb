# Scholar stats are now fetched by the GitHub Actions daily cron job
# (.github/workflows/update_scholar.yml) which writes _data/scholar.yml.
# Jekyll loads that file automatically as site.data.scholar — no scraping needed here.
#
# This plugin is intentionally a no-op so it never overwrites the data file
# with zeros when scraping is blocked (which happens on most CI servers).

module Jekyll
  class ScholarStats < Generator
    def generate(site)
      if site.data['scholar']
        Jekyll.logger.info "Scholar Stats:", "Using data from _data/scholar.yml (citations: #{site.data['scholar']['citations']})"
      else
        Jekyll.logger.warn "Scholar Stats:", "_data/scholar.yml not found — metrics will show defaults. Run scripts/fetch_scholar.py to generate it."
      end
    end
  end
end
