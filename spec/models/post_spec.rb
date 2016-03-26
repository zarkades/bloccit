require 'rails_helper'

RSpec.describe Post, type: :model do
    
    # #1 Using let method, create a new instance of the Post class, and name it post.
    let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }
    
    describe "attributes" do
    # #2 Test whether post has an attribute name title. This tests whether post will tretunt a non-nil value when post.title is callled
        it "responds to title" do
            expect(post).to respond_to(:title)
        end
    # #3 Apply similar test to body
        it "responds to body" do
            expect(post).to respond_to(:body)
        end
    end
end
