# frozen_string_literal: true

# CollectionDto is a data transfer object for collection model
# that is used to transfer data between the controller and the service layer.
class CollectionDto < Data.define(:data, :count)

  def self.create_from_array(data:, count:)
    new(data:, count:)
  end
end
