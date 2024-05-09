class OsVersion
  attr_accessor :marketing_name, :major_version, :latest_version, :release_date

  def initialize(version_data)
    version_name_parts = version_data['OSVersion'].split

    @marketing_name = version_name_parts[0...-1].join(" ")
    @major_version = version_name_parts[-1]
    @latest_version = version_data['Latest']['ProductVersion']
    @release_date = DateTime.parse(version_data['Latest']['ReleaseDate'])
  end

  def required_installation_date(deadline_days_after_release = 30)
    (release_date + deadline_days_after_release).to_s
  end
end
