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
