require 'rails_helper'

describe "image_id" do
  context "empty" do
    subject(:no_imageid_comment) { Comment.new(image_id: nil, body: "body") }

    it "invalid" do
      expect(no_image_id_comment).to_not be_valid
      expect(no_image_id_comment.errors[:image].size).to be 1
    end
  end

  context "illegal id" do
    subject(:illegal_image_id_comment) { Comment.new(image_id: image.id + 1, body: "bosy") }

    it "ivalid" do
      expect(illegal_image_id_comment).to_not be_valid
      expect(illigal_image_id_comment.errors[:image].size).to be 1
    end
  end
end
