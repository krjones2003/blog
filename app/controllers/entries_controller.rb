class EntriesController < ApplicationController
 
  def index
    #raise params.to_yaml

    @entries = Entry.find_all_by_userblog_id(params[:userblog_id])
    @userblog = Userblog.find(params[:userblog_id]) 
    
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @userblog = Userblog.find(params[:userblog_id]) 
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(params[:entry])
    @entry.save
    redirect_to userblog_entries_path, notice: 'Entry was successfully created.' 
  end


  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(params[:entry])

    redirect_to userblog_entry_path(@entry.userblog_id,@entry.id), notice: 'Userblog was successfully updated.' 
  end

 
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entries_url }
      format.json { head :no_content }
    end
  end
end
