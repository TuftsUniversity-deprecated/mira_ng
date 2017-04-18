require 'csv'

# top level collections
collections = ['Manuscripts','New Nation Votes','Test Items','Tufts Scholarship','University Archives','University Publications']

def create_top_level_collections(collections)
  collections.each do |collection|
    if Collection.where(title: collection).empty?
      a = Collection.new(title: [collection])
      a.apply_depositor_metadata 'mkorcy01'
      a.visibility = Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC
      a.save!
    end
  end
end

create_top_level_collections(collections)


def create_item_collections
	row_count = 0
  CSV.foreach("collection_map.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
  	puts row_count
  	row_count = row_count + 1
    child_col = row[1]
      if Collection.where(title: child_col).empty?
        next if child_col.blank?
        a = Collection.new(title: [child_col])
        a.apply_depositor_metadata 'mkorcy01'
        a.visibility = Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC
        a.save!

        b = Collection.where(title: row[0])
        unless b.empty?
          b.first.add_members a.id
          b.first.save
        end
      end
  end
end
Collection.all.each {|col| col.delete }

create_item_collections()

def create_item_lookup
  h2 = Hash.new
  CSV.foreach("pid_map_collections.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
    pid = row[1]
    col = Collection.where(title: row[0]).first.id
    h2[pid] = col
  end
  h2
end
