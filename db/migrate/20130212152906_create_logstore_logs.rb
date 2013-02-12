class CreateLogstoreLogs < ActiveRecord::Migration
  def change
    create_table :logstore_logs do |t|
      t.string :message

      t.timestamps
    end
  end
end
