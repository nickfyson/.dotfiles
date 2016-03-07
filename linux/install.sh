
if [ "$(uname)" == "Linux" ]; then
    eval $pkgman update
    eval $pkgman install -y build-essential python-dev git CMake ruby-dev
fi
