module Context
  extend ActiveSupport::Concern

  included do
    COMPONENTS = [
      :tasks
    ]

    COMPONENTS.each { |c|
      has_many c, as: :context, dependent: :destroy
    }

    def components
      result = []

      COMPONENTS.each { |c|
        result += self.send(c)
      }

      result
    end
  end

end
