require 'mkmf'
# No check code here
# You should check 1) Go environment exists and 2) Go version >= 1.5

if find_executable('go').nil? then
  abort <<NO_GO
No Go environment installed
NO_GO
end

# Check Go version here

system "go build -o libdoubler.so -buildmode=c-shared main.go"
