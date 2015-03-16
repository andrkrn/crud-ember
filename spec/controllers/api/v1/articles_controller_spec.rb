require 'rails_helper'

RSpec.describe Api::V1::ArticlesController, :type => :controller do

  let(:article) { Article.where(title: "Article One").first }

  context "GET index" do
    it "should success open the page" do
      get :index
      expect(response.status).to eql(200)
    end
  end

  context "GET show" do
    it "should open show page" do
      get :show, id: article
      expect(response.status).to eql(200)
    end
  end

  context "POST create" do
    it "should create article" do
      post :create, article: {title: "Article One", body: "Super article"}
      expect(response.status).to eql(201)
    end

    it "should not create article because title is empty" do
      post :create, article: {title: "", body: "Super article"}
      expect(response.status).to eql(422)
    end

    it "should not create article because body is empty" do
      post :create, article: {title: "Article Man", body: ""}
      expect(response.status).to eql(422)
    end
  end

  context "PUT update" do
    it "should update article title" do
      put :update, id: article, article: {title: "Article Edit One"}
      article.reload
      expect(article.title).to eql("Article Edit One")
    end

    it "should not update article title because empty" do
      put :update, id: article, article: {title: ""}
      expect(response.status).to eql(422)
    end
  end

  context "DELETE destroy" do
    it "should delete article" do
      delete :destroy, id: article
      expect(response.status).to eql(200)
    end
  end
end
