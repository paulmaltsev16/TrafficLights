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
<img src="https://github.com/user-attachments/assets/c24d94cd-bba5-4cde-9644-bc426acc4700" width="150" height="300">
<img src="https://github.com/user-attachments/assets/ebfa23cf-5c51-4cf8-9d1b-5d38f6328faf" width="150" height="300">
<img src="https://github.com/user-attachments/assets/b5c70db9-a8c2-4bf2-a620-1903f4c1264e" width="150" height="300">
</div>

### Chaos
<div style="display: flex; justify-content: center;">
<img src="https://github.com/user-attachments/assets/daafe71b-cc71-4021-9378-86e70e629131" width="150" height="300">
</div>


