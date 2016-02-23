require 'data_mapper'
require 'dm-postgres-adapter'

class Space

  include DataMapper::Resource

  property :id, Serial
  property :name, String

end

DataMapper.setup(:default, "postgres://localhost/snorbs_bnb_test")
DataMapper.finalize
DataMapper.auto_upgrade!


