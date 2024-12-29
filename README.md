# Traffic lights

## Summary

The application will display 1,000 traffic lights. Each traffic light will operate independently,
meaning they will not be synchronized with each other.

Each traffic light will follow this logic:

When the page is loaded, the application will display 1,000 traffic lights, all in red mode.
Each traffic light will start functioning after a random delay of up to 5 seconds.
The color display order is as follows:

Order Color Display Time (seconds)
1 Red 3.0
2 Red + Yellow 1.5
3 Green 3.0
4 Yellow 1.5
After completing one cycle, it will return to section 1 (Red) and repeat in an infinite loop.

A "Synchronize" button will appear in the top bar of the screen.

When the button is clicked, all traffic lights will switch to synchronized operation, and the button
text will change to "Chaos".
Clicking the button again will return the traffic lights to their initial unsynchronized state, and
the button text will change back to "Synchronize".

### Synchronized
<div style="display: flex; justify-content: center;">
<img src="https://github.com/user-attachments/assets/6249f77b-d9c1-40bb-935a-9b2c51cfb374" width="150" height="300">
<img src="https://github.com/user-attachments/assets/87421875-13f0-4247-b82d-c3b4dbf4b9cd" width="150" height="300">
<img src="https://github.com/user-attachments/assets/6db18138-0b0e-4527-bb72-cbd0a9f7b4e1" width="150" height="300">
</div>

### Chaos
<div style="display: flex; justify-content: center;">
<img src="https://github.com/user-attachments/assets/411bf907-c071-4e81-84fb-ace9ee7d8b10" width="150" height="300">
</div>
