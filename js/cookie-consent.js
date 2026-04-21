(function () {
    var consentId = 'cookie_consent';

    function getCookie(name) {
        var v = document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)');
        return v ? v.pop() : '';
    }

    function setCookie(name, value, days) {
        var d = new Date();
        d.setTime(d.getTime() + (days || 365) * 24 * 60 * 60 * 1000);
        document.cookie = name + '=' + value + ';path=/;expires=' + d.toUTCString() + ';SameSite=Lax';
    }

    function hideConsent() {
        var el = document.getElementById('cookie-consent');
        if (el) el.style.display = 'none';
    }

    document.addEventListener('DOMContentLoaded', function () {
        var existing = getCookie(consentId);
        if (existing) {
            hideConsent();
            return;
        }

        var accept = document.getElementById('cookie-accept');
        var reject = document.getElementById('cookie-reject');

        accept && accept.addEventListener('click', function () {
            setCookie(consentId, 'accepted', 365);
            hideConsent();
        });

        reject && reject.addEventListener('click', function () {
            setCookie(consentId, 'rejected', 365);
            hideConsent();
        });
    });
})();