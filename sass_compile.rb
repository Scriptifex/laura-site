# frozen_string_literal: true

require 'sass-embedded'

style = Sass.compile('assets/css/style.scss', ['assets/css/sass'])
puts style.css
