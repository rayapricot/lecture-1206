class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|

       # 背番号
      t.integer :number, null: false                        
      # ユーザー名
      t.string :name, null: false                           
      # 本名
      t.string :full_name                                   
      # メールアドレス
      t.string :email                                       
      # 生年月日
      t.date :birthday                                      
      # 性別 (0:男, 1:女)
      t.integer :gender, null: false, default: 0            
      # 管理者フラグ
      t.boolean :administrator, null: false, default: false
      t.timestamps null: false
    end
  end
end
