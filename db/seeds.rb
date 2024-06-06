
# 管理者ユーザーの初期データ
User.create!(
  username: "しげさん",
  email: "admin@example.com",
  password: "admin1",
  password_confirmation: "admin1",
  role: 10
)
