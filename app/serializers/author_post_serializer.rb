class AuthorPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :short_content, :tags

  has_many :tags, each_serializer: AuthorPostTagSerializer
  def short_content
    # byebug
    "#{self.object.content[0..39]}..."
  end
end
