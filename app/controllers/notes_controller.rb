class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def create
    @note = Note.new note_params
    if @note.save
      redirect_to root_path, notice: 'Saved!'
    else
      flash.now[:alert] = 'Oops! There was a problem saving that note.'
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :body_html)
  end
end
