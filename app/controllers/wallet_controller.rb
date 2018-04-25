# frozen_string_literal: true

class WalletController < ApplicationController
  before_action :authenticate_user!
  
end