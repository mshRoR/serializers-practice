class Artist < ApplicationRecord
  has_many :albums

  # def self.lightning
  #   connection.select_all(select([:id, :name, :label, :created_at]).arel).each do |attrs|
  #     # raise attrs.inspect
  #     attrs.each do |attr|
  #       raise attrs[attr].inspect
  #       attrs[attr] = type_cast_attribute(attr, attrs)
  #     end
  #   end
  # end

  def self.lightning
    connection.select_all(select([:id, :name, :label, :created_at]).arel).each do |attrs|
      attrs.each do |name, value|
        attrs[name] = value
      end
    end
  end
end
