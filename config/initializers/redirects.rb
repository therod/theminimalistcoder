Theminimalistcoder::Application.configure do
  config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
    r301 '/pages/talks', '/articles/minimalism-interview-srf'
    r301 '/talks', '/articles/minimalism-interview-srf'
    r301 '/articles/biggest-productivity-hack', '/articles/ketogenic-diet'
    r301 '/commonplace', '/articles'
    r301 '/commonplace/jobs-to-be-done', '/articles/jobs-to-be-done'
    r301 '/commonplace/movement', '/articles/movement'
    r301 '/commonplace/on-designing-and-writing-software', '/articles/on-designing-and-writing-software'
    r301 '/books', '/articles/books'
  end
end
