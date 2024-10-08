# frozen_string_literal: true

module InkComponents
  module Avatar
    class Component < ApplicationComponent
      renders_one :text

      style do
        variants {
          shape {
            circle { "rounded-full" }
            square { "rounded" }
          }
          size {
            xs { "w-6 h-6" }
            sm { "w-8 h-8" }
            md { "w-10 h-10" }
            lg { "w-20 h-20" }
            xl { "w-36 h-36" }
          }
          bordered {
            yes { "ring-2 ring-gray-300" }
          }
        }
        defaults { { size: :md, shape: :circle } }
      end

      style :name_abbreviation do
        base {
          %w[ relative inline-flex items-center justify-center overflow-hidden bg-gray-100 dark:bg-gray-600 ]
        }
      end

      style :icon do
        base {
          %w[ relative overflow-hidden bg-gray-100 dark:bg-gray-600 ]
        }
      end

      style :svg do
        base { "absolute text-gray-400" }

        variants {
          size {
            xs { "w-8 h-8 -left-1" }
            sm { "w-10 h-10 -left-1" }
            md { "w-12 h-12 -left-1" }
            lg { "w-22 h-24 -left-2" }
            xl { "w-38 h-40 -left-2" }
          }
        }

        defaults { { size: :md } }
      end

      attr_reader :size, :shape, :bordered, :image_url, :name_abbreviation

      def initialize(size: nil, shape: nil, bordered: false, image_url: nil, name_abbreviation: nil, **extra_attributes)
        @size = size
        @shape = shape
        @bordered = bordered
        @image_url = image_url
        @name_abbreviation = name_abbreviation
        super(**extra_attributes)
      end

      private
      def default_attributes
        {
          class: style(size:, shape:, bordered:)
        }
      end

      def wrapper_classes
        %w[ flex items-center gap-4 ] if text?
      end

      def options
        attributes.except(:class)
      end
    end
  end
end
