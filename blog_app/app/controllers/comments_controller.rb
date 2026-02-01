class CommentsController < ApplicationController
    def create
        blog = Blog.find(params[:blog_id])
        comment = blog.comments.new(comment_params)
    
        if comment.save
          redirect_to blog
        else
          redirect_to blog, alert: "Comment could not be saved"
        end
    end
    
    def destroy
        comment = Comment.find(params[:id])
        blog = comment.blog
        comment.destroy
        redirect_to blog
    end
      def create
        blog = Blog.find(params[:blog_id])
        comment = blog.comments.new(comment_params)
    
        if comment.save
          redirect_to blog
        else
          redirect_to blog, alert: "Comment could not be saved"
        end
      end
    
      def destroy
        comment = Comment.find(params[:id])
        blog = comment.blog
        comment.destroy
        redirect_to blog
      end
end
