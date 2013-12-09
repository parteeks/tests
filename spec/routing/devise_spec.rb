require 'spec_helper'
describe "routing to profiles" do
  it "routes /users/sign_up to RegistrationsController#new for signup" do
    expect(:get => "/users/sign_up").to route_to(
      :controller => "registrations",
      :action => "new"
    )
  end

  it "routes /users/edit to RegistrationsController#edit for edit" do
    expect(:get => "/users/edit").to route_to(
                                            :controller => "registrations",
                                            :action => "edit"
                                        )
  end

  it "routes /users to RegistrationsController#create for post" do
    expect(:post => "/users").to route_to(
                                    :controller => "registrations",
                                    :action => "create"
                                )
  end

  it "routes /users/cancel to RegistrationsController#cancel for cancel" do
    expect(:get => "/users/cancel").to route_to(
                                     :controller => "registrations",
                                     :action => "cancel"
                                 )
  end

  it "routes /users to RegistrationsController#update for put" do
    expect(:put => "/users").to route_to(
                                         :controller => "registrations",
                                         :action => "update"
                                     )
  end

  it "routes /users to RegistrationsController#destroy for delete" do
    expect(:delete => "/users").to route_to(
                                    :controller => "registrations",
                                    :action => "destroy"
                                )
  end

  it "routes /users/sign_in to SessionsController#new for signin" do
    expect(:get => "/users/sign_in").to route_to(
      :controller => "sessions",
      :action => "new"
    )
  end

  it "routes /users/sign_in to SessionsController#create for signin" do
    expect(:post => "/users/sign_in").to route_to(
      :controller => "sessions",
      :action => "create"
    )
  end

  it "routes /users/sign_out to SessionsController#destroy for signout" do
    expect(:delete => "/users/sign_out").to route_to(
      :controller => "sessions",
      :action => "destroy"
    )
  end

  it "routes /users/sign_out to SessionsController#destroy for signout" do
    expect(:get => "/").to route_to(:controller => "application",:action => "index")
  end

  it "routes /users/password/new to PasswordsController#new for new" do
    expect(:get => "/users/password/new").to route_to(
                                            :controller => "passwords",
                                            :action => "new"
                                        )
  end

  it "routes /users/password/edit to PasswordsController#edit for edit" do
    expect(:get => "/users/password/edit").to route_to(
                                                 :controller => "passwords",
                                                 :action => "edit"
                                             )
  end

  it "routes /users/password to PasswordsController#create for post" do
    expect(:post => "/users/password").to route_to(
                                                  :controller => "passwords",
                                                  :action => "create"
                                              )
  end

  it "routes /users/password to PasswordsController#update for put" do
    expect(:put => "/users/password").to route_to(
                                              :controller => "passwords",
                                              :action => "update"
                                          )
  end

  it "does not expose a list of profiles" do
    expect(:get => "/profiles").not_to be_routable
  end
end