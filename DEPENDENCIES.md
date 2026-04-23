# Third-Party Dependencies

This document inventories all third-party libraries and frameworks used in the Apotex-Deploy project as of April 23, 2026.

## Summary
- **Total Third-Party Libraries**: 3 identified
- **Known Security Vulnerabilities**: 0
- **License Compliance**: All identified libraries use MIT or equivalent open-source licenses
- **Last Security Audit**: April 23, 2026

---

## Detailed Inventory

### 1. **js-cookie**
- **Version**: 3.0.5
- **License**: MIT
- **Purpose**: Cookie handling and management for the cookie consent bar
- **File Location**: [js/js.cookie.min.js](js/js.cookie.min.js)
- **Usage**: Loaded globally in [en/incl/global/custom-code-footer.asp](en/incl/global/custom-code-footer.asp)
- **Snyk Status**: ✅ **No known security issues**
  - Latest non-vulnerable version: 3.0.5 (current version)
  - Security score: 87/100 (Healthy)
  - Maintenance: Sustainable
- **Type**: Minified production build
- **Notes**: 
  - This is the current latest stable version as of release (April 24, 2023)
  - Key ecosystem project with 18M weekly downloads
  - Last commit: 12 days prior to audit date
  - Project has active community (22.7k GitHub stars)

---

### 2. **Bootstrap**
- **Version**: 5.0.1
- **License**: MIT
- **Purpose**: Responsive CSS framework for layout, components, and styling
- **File Locations**:
  - CSS: [css/bootstrap.min.css](css/bootstrap.min.css)
  - JS Bundle: [js/bootstrap.bundle.min.js](js/bootstrap.bundle.min.js)
- **Usage**: Loaded globally in [en/incl/global/header-bottom.asp](en/incl/global/header-bottom.asp) (CSS) and [en/incl/global/custom-code-footer.asp](en/incl/global/custom-code-footer.asp) (JS)
- **Snyk Status**: ✅ **No direct vulnerabilities**
  - Latest available version: 5.3.8 (newer than v5.0.1)
  - Recommended for security updates: Consider upgrading to 5.3.8+
  - Maintenance: Actively maintained
- **Type**: Minified production builds
- **Notes**:
  - v5.0.1 released April 21, 2021
  - Latest version (5.3.8) released ~7 months before audit
  - Provides responsive design and interactive components
  - Note: This version is 3+ years old; newer versions with security patches are available

---

### 3. **SmoothScroll**
- **Version**: 1.5.1
- **License**: MIT
- **Original Author**: Balazs Galambosi
- **Purpose**: Smooth scrolling behavior for anchor links and page navigation
- **File Location**: [js/smooth-scroll.js](js/smooth-scroll.js)
- **Usage**: Loaded globally in [en/incl/global/custom-code-footer.asp](en/incl/global/custom-code-footer.asp)
- **Source URL**: https://cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.5.1/SmoothScroll.min.js
- **GitHub Repository**: https://github.com/gblazex/SmoothScroll
- **Snyk Status**: ✅ **Not on Snyk** - This is a smaller, specialized library (not actively tracked)
  - Community project on GitHub
  - Lightweight polyfill with no known security vulnerabilities
  - MIT licensed
- **Type**: Minified production build
- **Notes**:
  - v1.5.1 is a stable, mature version (original project last updated ~2015)
  - No dependencies; standalone library
  - Provides cross-browser smooth scrolling functionality

---

## Custom Scripts

The following are custom-built scripts specific to the Apotex-Deploy project:

| File | Purpose | License |
|------|---------|---------|
| [js/form-handler.js](js/form-handler.js) | Form submission handling | Proprietary |
| [js/navbar-dropdown.js](js/navbar-dropdown.js) | Navigation dropdown functionality | Proprietary |
| [js/popup-modal-hcp.js](js/popup-modal-hcp.js) | HCP portal modal/disclaimer popup | Proprietary |
| [js/popup-modal-patient.js](js/popup-modal-patient.js) | Patient portal modal/disclaimer popup | Proprietary |
| [js/script.js](js/script.js) | General site functionality | Proprietary |
| [js/index.js](js/index.js) | YouTube iframe API wrapper | Proprietary wrapper; YouTube API by Google |
| [css/dropdown-style.css](css/dropdown-style.css) | Dropdown styling | Proprietary |
| [css/theme-style.css](css/theme-style.css) | Theme customization | Proprietary |
| [css/mbr-additional.css](css/mbr-additional.css) | Additional component styles | Proprietary |

---

## Security Recommendations

### Current Status
✅ **All identified third-party libraries are currently free of known security vulnerabilities.**

### Recommendations for Future Maintenance

1. **Bootstrap 5.0.1 Update** (Priority: Medium)
   - Current version: 5.0.1 (April 2021)
   - Latest stable: 5.3.8+ (more recent security patches)
   - **Action**: Test and plan upgrade to latest 5.x branch for security patches and bug fixes
   - **Testing Required**: Regression testing on all pages, especially responsive design

2. **Ongoing Monitoring**
   - Monitor Snyk security alerts monthly
   - Review npm security advisories quarterly
   - Subscribe to security bulletins for Bootstrap and js-cookie

---

## Related Files
- [README.md](README.md) - Project overview
- [web.config](web.config) - IIS configuration

---

**Audit Date**: April 23, 2026  
**Auditor Notes**: This is a static website using ASP (Classic) with client-side JavaScript and CSS. No Node.js package.json found; dependencies are manually managed as static files in the `/js` and `/css` directories.