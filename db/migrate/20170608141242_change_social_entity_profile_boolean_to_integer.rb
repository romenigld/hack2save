class ChangeSocialEntityProfileBooleanToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column(:profiles, :social_entity, 'integer USING CAST(social_entity AS integer)')
  end
end
