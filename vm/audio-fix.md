# Audio popping
This is what I had to do to stop the audio popping issue
1. Run the following command to open a new file with nano
    
        sudo nano /etc/modprobe.d/audio_powersave.conf
2. Paste the following into the file:

        options snd_hda_intel power_save=0 power_save_controller=N
3. Save and exit the file, then run this:

        sudo mkinitcpio -P
4. Then reboot!

# Virtual Machine
For virtual machine audio issues, I normally just modify this file:

`/usr/share/wireplumber/wireplumber.conf.d/alsa-vm.conf`

and set the two number values there to 4096 and 8192
