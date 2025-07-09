require 'open-uri'
require 'nokogiri'

module Jekyll
  class ScholarStats < Generator
    # Replace with your Google Scholar ID from your profile URL
    SCHOLAR_ID = 'EOsiW3sAAAAJ'.freeze
    SCHOLAR_URL = 'https://scholar.google.com/citations?hl=en&user='.freeze
    
    def generate(site)
      begin
        # Fetch the Google Scholar profile page
        doc = Nokogiri::HTML(URI.parse(SCHOLAR_URL + SCHOLAR_ID).open)
        
        # Find the statistics table
        tbl = doc.css('table').first
        tbl_data = { 'id' => SCHOLAR_ID }
        
        # Extract citation metrics
        if tbl
          tbl.css('tr')[1..].each do |tr|
            cell_data = tr.css('td').map(&:text)
            if cell_data.length >= 2
              key = cell_data[0].downcase.gsub('-', '_').gsub(' ', '_')
              value = cell_data[1].gsub(',', '').to_i
              tbl_data[key] = value
            end
          end
        end
        
        # Store the data so it can be accessed in templates
        site.data['scholar'] = tbl_data
        
        Jekyll.logger.info "Scholar Stats:", "Fetched citation data: #{tbl_data['citations']} citations, h-index: #{tbl_data['h_index']}"
        
      rescue => e
        Jekyll.logger.warn "Scholar Stats:", "Failed to fetch Google Scholar data: #{e.message}"
        # Fallback data if fetch fails
        site.data['scholar'] = {
          'id' => SCHOLAR_ID,
          'citations' => 0,
          'h_index' => 0,
          'i10_index' => 0
        }
      end
    end
  end
end 