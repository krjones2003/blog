require "spec_helper"

describe EntriesController do
  describe "entries routing" do

    it "routes to #index" do
      get("/userblogs/1/entries").should route_to("entries#index", :userblog_id => "1")
    end

    it "routes to #new" do
      get("/userblogs/1/entries/new").should route_to("entries#new", :userblog_id => "1")
    end

    it "routes to #show" do
      get("/userblogs/1/entries/1").should route_to("entries#show", :userblog_id => "1", :id => "1")
    end

    it "routes to #edit" do
      get("/userblogs/1/entries/1/edit").should route_to("entries#edit", :userblog_id => "1", :id => "1")
    end

    it "routes to #create" do
      post("/userblogs/1/entries").should route_to("entries#create", :userblog_id => "1")
    end

    it "routes to #update" do
      put("/userblogs/1/entries/1").should route_to("entries#update", :userblog_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      delete("/userblogs/1/entries/1").should route_to("entries#destroy", :userblog_id => "1", :id => "1")
    end

  end
end
