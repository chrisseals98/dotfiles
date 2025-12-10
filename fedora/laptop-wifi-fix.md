# Laptop wifi fix

For some reason my laptop decides to turn wifi off when opening the lid. This fixes that.

```
echo '#!/bin/bash
# Fix Lid close acting like airplane mode key
setkeycodes d7 240' | sudo tee /etc/rc.d/rc.local
sudo chmod +x /etc/rc.d/rc.local
sudo /etc/rc.d/rc.local
```
