<script src="/js/js.cookie.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script src="/js/smooth-scroll.js"></script>
<script src="/js/index.js"></script>
<script src="/js/script.js"></script>
<script src="/js/popup-modal.js"></script>

<script>
    // Cookie Consent Management
    (function () {
        const COOKIE_NAME = 'cookie-consent';
        const COOKIE_EXPIRY_DAYS = 7;

        function setCookieConsent(accepted) {
            Cookies.set(COOKIE_NAME, accepted ? 'accepted' : 'rejected', {
                expires: COOKIE_EXPIRY_DAYS,
                path: '/',
                sameSite: 'Lax'
            });
            document.getElementById('cookie-consent').style.display = 'none';

            if (accepted) {
                enableAnalytics();
            }
        }

        function checkCookieConsent() {
            const consent = Cookies.get(COOKIE_NAME);
            if (consent) {
                document.getElementById('cookie-consent').style.display = 'none';
                if (consent === 'accepted') {
                    enableAnalytics();
                }
            }
        }

        function enableAnalytics() {
            // Add your analytics/tracking code here
            // Example: Google Analytics
            // gtag('consent', 'update', {
            //   'analytics_storage': 'granted'
            // });
            console.log('Analytics enabled');
        }

        // Event listeners for consent buttons
        document.getElementById('cookie-accept').addEventListener('click', function () {
            setCookieConsent(true);
        });

        document.getElementById('cookie-reject').addEventListener('click', function () {
            setCookieConsent(false);
        });

        // Check consent on page load
        document.addEventListener('DOMContentLoaded', checkCookieConsent);
    })();
</script>