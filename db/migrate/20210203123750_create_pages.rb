class CreatePages < ActiveRecord::Migration[6.1]
  def up
    create_table :pages do |t|
      t.integer 'subject_id'
      t.string 'name'
      t.string 'paramlink'
      t.integer 'position'
      t.boolean 'visible', :default => false
      t.timestamps
    end
    add_index('pages', 'subject_id')
    add_index('pages', 'paramlink')
  end

  def down
    drop_table :pages
  end
end