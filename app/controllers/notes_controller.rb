class NotesController < ApplicationController
  before_action :find_note, only: [:edit, :update]

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new note_params
    if @note.save
      redirect_to edit_note_path(@note), notice: 'Saved!'
    else
      flash.now[:alert] = 'Oops! There was a problem saving that note.'
      render :new
    end
  end

  def update
    if @note.update note_params
      redirect_to edit_note_path(@note), notice: 'Saved!'
    else
      flash.now[:alert] = 'Oops! There was a problem saving that note.'
      render :edit
    end
  end

  private

  def find_note
    @note = Note.find params[:id]
  end

  def note_params
    params.require(:note).permit(:title, :body_html)
  end
end
