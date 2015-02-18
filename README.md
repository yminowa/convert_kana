# ConvertKana

Convert full(or half)-width katakana to hiragana, and vice versa as String class extension.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'convert_kana'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install convert_kana

## Usage

### 1) converts full(or half)-width katakana to hiragana

    'タクト'.to_hiragana       # => 'たくと'
    'ﾀｸﾄ'.to_hiragana       # => 'たくと'

### 2) converts hiragana to full-width katakana

    'たくと'.to_katakana       # => 'タクト'

### 3) converts hiragana to half-width katakana

    'たくと'.to_hw_katakana    # => 'ﾀｸﾄ'

### 4) else

Output as it is. For example,

    '拓人'.to_hiragana        # => '拓人

## Contributing

1. Fork it ( https://github.com/[my-github-username]/convert_kana/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
