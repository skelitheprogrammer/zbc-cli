# Zig's Basic Calculator
Cli implementation of [zbc-lib](https://github.com/skelitheprogrammer/zbc-lib) that evaluates arithmetical expressions in terminal

# Installation
## Manual
```
git clone https://github.com/skelitheprogrammer/zbc-cli
cd zbc-cli
zig build
sudo cp zig-out/bin/zbc-cli /usr/bin/
```

# Usage
```
zbc 1+1
```
```
zbc "1+(2+3)"
```
# Limitations
- No interactive mode
- All limitations from [zbc-lib](https://github.com/skelitheprogrammer/zbc-lib/tree/main#limitations)
