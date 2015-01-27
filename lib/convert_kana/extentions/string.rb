require 'nkf'

class String
  # NOTE require nkf 2.0.9 over

  # convert from full(or half)-width katakana to hiragana.
  def to_hiragana
    # NOTE -w option is for utf8 output
    NKF.nkf('-w --hiragana', self)
  end

  # convert from hiragana or half-width katakana to full-width katanaka.
  def to_katakana
    NKF.nkf('-w --katakana', self)
  end

  # convert from hiragana or half-width katakana to half-width katakana.
  def to_hw_katakana
    # At first, convert to full-width katanaka,
    # and then convert to half-width hiragana.
    NKF.nkf('-w -Z4', to_katakana)
  end
end
