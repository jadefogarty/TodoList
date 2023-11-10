#Rails.use_this_application.config.middleware(something_that_happens_between_requests).insert_before o, Rack::Cors(library_were_going_to_be_using), debug: false, logger:
Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: false, logger: 
(-> {Rails.logger}) do
    allow do #specifies the request being allowed
        origins '*' #specifies where the request is coming from (what machines we can request from)
        resource'*', #specifies what controllers can be evoked
            :headers => :any,
            :methods => [:get, :post, :put, :delete] #specifies what kind of methods can be used
    end
end

