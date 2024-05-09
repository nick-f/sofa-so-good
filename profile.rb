module Profile
  def self.generate(versions = [])
    versions = Sofa.new.versions

    puts header + combine_versions(versions) + footer
  end

  def self.combine_versions(versions = [])
    versions.map { |version| plist_entry(version) }.join
  end

  def self.plist_entry(version)
    template = read_file('version.tmpl')

    template
      .gsub!("{{ installation_date }}", version.required_installation_date)
      .gsub!("{{ minimum_version }}", version.latest_version)
      .gsub!("{{ targeted_os_versions }}", version.major_version)
  end

  def self.read_file(filename)
    File.read(filename)
  end

  def self.header
    read_file('header.tmpl')
  end

  def self.footer
    read_file('footer.tmpl')
  end
end
