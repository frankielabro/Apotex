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

    // --- MODIFIED LOGIC START ---
    // 3. TRIGGER: Check if the disclaimer has already been shown in this session
    const hasSeenDisclaimer = sessionStorage.getItem('patientDisclaimerShown');

    if (!hasSeenDisclaimer) {
        // If they haven't seen it, show it after 2 seconds
        setTimeout(() => {
            openModal();
            // Set the flag so it doesn't trigger again during this session
            sessionStorage.setItem('patientDisclaimerShown', 'true');
        }, 2000);
    }
    // --- MODIFIED LOGIC END ---

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