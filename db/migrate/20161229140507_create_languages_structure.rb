class CreateLanguagesStructure < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string      :name,          null:false
      t.string      :desc
      t.string      :long_desc
      t.timestamps
    end

    create_table :problems do |t|
      t.string      :name,          null:false
      t.text        :desc
      t.text        :code
      t.text        :test
      t.integer     :language_id
      t.timestamps
    end

    create_table :iterations do |t|
      t.string      :code
      t.datetime    :submit_time
      t.integer     :assignment_id, null:false
      t.timestamps
    end

    create_table :comments do |t|
      t.integer     :user_id,       null:false
      t.string      :content,       null:false
      t.string   'commentable_type'
      t.integer  'commentable_id'
      t.timestamps
    end


    create_table :assignments do |t|
      t.string      :token,         null:false
      t.integer     :user_id,       null:false
      t.integer     :problem_id,    null:false
      t.datetime    :assign_date,   null:false
      t.datetime    :last_submit_date
      t.timestamps
    end
  end
end
