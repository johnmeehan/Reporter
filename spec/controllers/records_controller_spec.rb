require 'rails_helper'

RSpec.describe RecordsController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.attributes_for :record
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all records as @records" do
      record = Record.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:records)).to eq([record])
    end
  end

  describe "GET #show" do
    it "assigns the requested record as @record" do
      record = Record.create! valid_attributes
      get :show, {:id => record.to_param}, valid_session
      expect(assigns(:record)).to eq(record)
    end
  end

  describe "GET #new" do
    it "assigns a new record as @record" do
      get :new, {}, valid_session
      expect(assigns(:record)).to be_a_new(Record)
    end
  end

  describe "GET #edit" do
    it "assigns the requested record as @record" do
      record = Record.create! valid_attributes
      get :edit, {:id => record.to_param}, valid_session
      expect(assigns(:record)).to eq(record)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Record" do
        expect {
          post :create, {:record => valid_attributes}, valid_session
        }.to change(Record, :count).by(1)
      end

      it "assigns a newly created record as @record" do
        post :create, {:record => valid_attributes}, valid_session
        expect(assigns(:record)).to be_a(Record)
        expect(assigns(:record)).to be_persisted
      end

      it "redirects to the created record" do
        post :create, {:record => valid_attributes}, valid_session
        expect(response).to redirect_to(Record.last)
      end
    end

    # context "with invalid params" do
    #   it "assigns a newly created but unsaved record as @record" do
    #     post :create, {:record => invalid_attributes}, valid_session
    #     expect(assigns(:record)).to be_a_new(Record)
    #   end
    #
    #   it "re-renders the 'new' template" do
    #     post :create, {:record => invalid_attributes}, valid_session
    #     expect(response).to render_template("new")
    #   end
    # end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { company_name: "John Meehan" } }

      it "updates the requested record" do
        record = Record.create! valid_attributes
        put :update, {:id => record.to_param, :record => new_attributes}, valid_session
        record.reload
        expect(record.company_name).to eq "John Meehan"
      end

      it "assigns the requested record as @record" do
        record = Record.create! valid_attributes
        put :update, {:id => record.to_param, :record => valid_attributes}, valid_session
        expect(assigns(:record)).to eq(record)
      end

      it "redirects to the record" do
        record = Record.create! valid_attributes
        put :update, {:id => record.to_param, :record => valid_attributes}, valid_session
        expect(response).to redirect_to(record)
      end
    end

    # context "with invalid params" do
    #   it "assigns the record as @record" do
    #     record = Record.create! valid_attributes
    #     put :update, {:id => record.to_param, :record => invalid_attributes}, valid_session
    #     expect(assigns(:record)).to eq(record)
    #   end
    #
    #   it "re-renders the 'edit' template" do
    #     record = Record.create! valid_attributes
    #     put :update, {:id => record.to_param, :record => invalid_attributes}, valid_session
    #     expect(response).to render_template("edit")
    #   end
    # end
  end

  describe "DELETE #destroy" do
    it "destroys the requested record" do
      record = Record.create! valid_attributes
      expect {
        delete :destroy, {:id => record.to_param}, valid_session
      }.to change(Record, :count).by(-1)
    end

    it "redirects to the records list" do
      record = Record.create! valid_attributes
      delete :destroy, {:id => record.to_param}, valid_session
      expect(response).to redirect_to(records_url)
    end
  end

end
