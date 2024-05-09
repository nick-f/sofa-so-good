class Sofa
  attr_accessor :versions

  def initialize
    process_data
  end

  private

  def process_data
    fetch_data

    @versions = @parsed_data['OSVersions'].map do |version_data|
      OsVersion.new(version_data)
    end
  end

  def fetch_data
    uri = URI('https://sofa.macadmins.io/v1/macos_data_feed.json')
    response = Net::HTTP.get(uri)

    @parsed_data = JSON.parse(response)
  end
end
