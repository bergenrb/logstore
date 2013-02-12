# This migration comes from logstore (originally 20130212152906)
class CreateLogstoreLogs < ActiveRecord::Migration
  def change
    create_table :logstore_logs do |t|
      t.string :message

      t.timestamps
    end
  end
end
