require 'spec_helper'

describe Post do
  it "title should be automatically titleized before save" do
  end

  it "post should be unpublished by default" do
  end

  # a slug is an automaticaly generated url-friendly
  # version of the title
  it "slug should be automatically generated" do
    post = Post.new(title: "New post!", content: "A great story")

    expect(post.slug).to be_nil
    post.save

    expect(post.slug).to eq "new-post"
  end
end
