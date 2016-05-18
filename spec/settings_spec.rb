require 'spec_helper'

describe Settings do

  it 'store directory path' do
    Settings.dir = "/tmp"
    expect(Settings.dir).to eq("/tmp")
  end

  it 'store languages' do
    Settings.langs << "eng"
    Settings.langs << "por"
    expect(Settings.langs.size).to eq(2)
  end

  it 'saves default settings' do
    settings = Settings.new(['por', 'eng'])
    settings.create_settings
    expect(Settings.default_languages).to match_array(['por', 'eng'])
    expect(File.exist? Settings.path).to eq(true)
  end

end
