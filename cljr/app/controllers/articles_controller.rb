class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end
	def show
		@article = Article.find(params[:article_id])
	end
	def new
	end
	def create
		article = Article.new(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category_id])
		article.generate_link
		if article.save
			redirect_to category_article_path(category_id: article.category.id, article_id: article.id), flash:{link: article.generate_link}
		else
			redirect_to new_category_article_path, flash:{error: article.errors.full_messages}
		end
	end
	def edit
		@article = Article.find(params[:article_id])
		if params[:link] != @article.link
			redirect_to root_path, flash: [error: true]
		end
	end
	def update
		article = Article.find(params[:article_id])
		article.update_attributes(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category_id])
		redirect_to category_article_path
	end
end