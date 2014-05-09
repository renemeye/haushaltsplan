class BudgetEntriesController < ApplicationController
  before_action :set_budget_entry, only: [:show, :edit, :update, :destroy]

  # GET /budget_entries
  # GET /budget_entries.json
  def index
    @budget_entries = BudgetEntry.all
  end

  # GET /budget_entries/1
  # GET /budget_entries/1.json
  def show
  end

  # GET /budget_entries/new
  def new
    @budget_entry = BudgetEntry.new(:parent_id => params[:parent_id], :income => params[:income])
    @budgets = Budget.all.order(:name)
    @parent_budget_entries = BudgetEntry.all
  end

  # GET /budget_entries/1/edit
  def edit
    @budgets = Budget.all.order(:name)
    @parent_budget_entries = BudgetEntry.all
  end

  # POST /budget_entries
  # POST /budget_entries.json
  def create
    @budget_entry = BudgetEntry.new(budget_entry_params)

    respond_to do |format|
      if @budget_entry.save
        format.html { redirect_to budget_url(Budget.first), notice: 'Budget entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @budget_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @budget_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_entries/1
  # PATCH/PUT /budget_entries/1.json
  def update
    respond_to do |format|
      if @budget_entry.update(budget_entry_params)
        format.html { redirect_to budget_url(Budget.first), notice: 'Budget entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @budget_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_entries/1
  # DELETE /budget_entries/1.json
  def destroy
    @budget_entry.destroy
    respond_to do |format|
      format.html { redirect_to budget_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_entry
      @budget_entry = BudgetEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_entry_params
      params.require(:budget_entry).permit(:name, :income, :value_in_euro, :budget_id, :parent_id)
    end
end
