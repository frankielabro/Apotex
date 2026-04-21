document.addEventListener('DOMContentLoaded', () => {
    const overlay = document.getElementById('modalOverlay');
    const closeBtnX = document.getElementById('closeModal');
    const closeBtnLower = document.getElementById('closeBtn');

    // 1. Function to open the modal
    const openModal = () => {
        if (overlay) {
            overlay.classList.add('show');
            overlay.setAttribute('aria-hidden', 'false');
        }
    };

    // 2. Function to close the modal
    const closeModal = () => {
        if (overlay) {
            overlay.classList.remove('show');
            overlay.setAttribute('aria-hidden', 'true');
        }
    };

    // 3. TRIGGER: Open the modal after 2000ms (2 seconds)
    // You can change 2000 to any other number (e.g., 5000 for 5 seconds)
    setTimeout(openModal, 2000);

    // 4. Closing Logic (X button and "Got it" button)
    if (closeBtnX) closeBtnX.addEventListener('click', closeModal);
    if (closeBtnLower) closeBtnLower.addEventListener('click', closeModal);

    // 5. Closing Logic (Clicking the dark background)
    if (overlay) {
        overlay.addEventListener('click', (event) => {
            if (event.target === overlay) {
                closeModal();
            }
        });
    }
});