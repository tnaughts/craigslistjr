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
		p params
		puts "!!!!!!!!!!!!"
		article = Article.new(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category_id])
		if article.save
			redirect_to category_article_path(category_id: article.category.id, article_id: article.id)
		else
			redirect_to new_category_article_path, flash:{error: article.errors.full_messages}
		end

	end
end