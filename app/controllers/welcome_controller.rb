class WelcomeController < ApplicationController
 def say
  @page_title = 'Hellow MuMu'
 end

 def index
  @page_title = 'HOLA! MuMu'
 end
end
