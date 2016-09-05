require 'spec_helper'

describe RemovePdfRestrictions do
  it 'has a version number' do
    expect(RemovePdfRestrictions::VERSION).not_to be nil
  end

  context 'given not existing file' do
    it 'raises an error' do
      not_existing_file = 'foo_bar.pdf'
      expect{ RemovePdfRestrictions.execute!(not_existing_file) }.to raise_error
    end
  end
end
