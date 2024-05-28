document.addEventListener('DOMContentLoaded', function () {
    const content = document.getElementById('content');
    const increaseTextButton = document.getElementById('increase-text');
    const decreaseTextButton = document.getElementById('decrease-text');
    const toggleContrastButton = document.getElementById('toggle-contrast');
   
    let fontSize = 16; // Default font size in pixels

    // Increase text size
    increaseTextButton.addEventListener('click', function () {
        fontSize += 2;
        content.style.fontSize = fontSize + 'px';
    });

    // Decrease text size
    decreaseTextButton.addEventListener('click', function () {
        if (fontSize > 12) { // Minimum font size to prevent it from becoming too small
            fontSize -= 2;
            content.style.fontSize = fontSize + 'px';
        }
    });

    // Toggle high contrast mode
    toggleContrastButton.addEventListener('click', function () {
        document.body.classList.toggle('high-contrast');
    });
});
