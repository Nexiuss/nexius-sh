#为MacOS平台兼容Linux的pwdx命令
function pwdx {
  lsof -a -d cwd -p $1 -n -Fn | awk '/^n/ {print substr($0,2)}'
}
