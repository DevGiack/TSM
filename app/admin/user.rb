ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :is_pro

  index do
    selectable_column
    id_column
    column :email
    column :is_pro
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :is_pro
    end
    f.actions
  end

end