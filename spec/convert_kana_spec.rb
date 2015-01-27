require 'spec_helper'

describe String do
  it 'converts full-width katanaka to hiragana' do
    expect('タクト'.to_hiragana).to eq 'たくと'
  end

  it 'converts half-width katanaka to hiragana' do
    expect('ﾀｸﾄ'.to_hiragana).to eq 'たくと'
  end

  it 'converts hiragana to half-width katakana' do
    expect('たくと'.to_hw_katakana).to eq 'ﾀｸﾄ'
  end

  it 'converts hiragana to full-width katakana' do
    expect('たくと'.to_katakana).to eq 'タクト'
  end

  it 'does not convert if object is unexpected string in to_hiragana' do
    expect('拓人'.to_hiragana).to eq '拓人'
  end

  it 'does not convert if object is unexpected string in to_hw_katakana' do
    expect('拓人'.to_hiragana).to eq '拓人'
  end

  it 'does not convert if object is unexpected string in to_katakana' do
    expect('拓人'.to_katakana).to eq '拓人'
  end
end
