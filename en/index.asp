<%@ Language="VBScript" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <!-- #include virtual="en/incl/global/header-top.asp"-->
        <title>Home</title>
        <!-- #include virtual="en/incl/global/header-bottom.asp"-->
        <script src="/js/form-handler.js"></script>
    </head>

    <body>
        <!-- #include virtual="en/incl/global/navigation-bar.asp"-->
        <section data-bs-version="5.1" class="header3 cid-vgpa938y9h" id="header3-d">
            <div class="mbr-overlay" style="opacity: 0; background-color: rgb(255, 255, 255);"></div>
            <div class="align-center container">
                <div class="row justify-content-end">
                    <div class="col-12 col-lg-7">
                        <h1 class="mbr-section-title mbr-fonts-style mb-3 display-1">
                            <span class="title-highlight"><strong>Apo-Semaglutide<br>is Here</strong></span>
                        </h1>
                    </div>
                </div>
            </div>
        </section>

        <section data-bs-version="5.1" class="features03 renderm5 cid-vgpe3hLGfq" id="features03-f">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10 justify-content-center">
                        <div class="content-wrapper">
                            <div class="row items-wrapper justify-content-center">
                                <div class="col-12 col-lg-6 item features-without-image">
                                    <div class="item-wrapper large-radius">
                                        <div class="card-box card-wrap">
                                            <h2 class="item-number mbr-fonts-style display-2">Are you a healthcare
                                                professional?&nbsp;<br></h2>
                                            <p class="item-title mbr-fonts-style display-7">Access useful resources,
                                                enrollment tools, and patient support materials. Only for Canadian
                                                Healthcare Professionals. Login or sign up.</p>
                                            <div class="label-wrapper">

                                                <form action="/en/hcp/index.asp" name="hcp-form" method="GET"
                                                    class="mbr-form form-with-styler">
                                                    <div class="row">
                                                        <div hidden="hidden" data-form-alert=""
                                                            class="alert alert-success col-12"> Thanks for filling out
                                                            the form! </div>
                                                        <div hidden="hidden" data-form-alert-danger=""
                                                            class="alert alert-danger col-12"> Oops...! some problem!
                                                        </div>
                                                    </div>
                                                    <div class="dragArea row">
                                                        <fieldset class="col-lg-12 col-md-12 col-sm-12 form-group mb-3"
                                                            style="border: none; margin: 0;">
                                                            <legend class="form-control-label mbr-fonts-style display-4"
                                                                style="float: left; width: 100%;">
                                                                I am a:
                                                            </legend>

                                                            <div class="form-check">
                                                                <label class="form-check-label display-7">
                                                                    <input type="radio" name="occupation"
                                                                        value="Pharmacist" class="form-check-input"
                                                                        checked>
                                                                    Pharmacist
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <label class="form-check-label display-7">
                                                                    <input type="radio" name="occupation"
                                                                        value="Physician" class="form-check-input">
                                                                    Physician
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <label class="form-check-label display-7">
                                                                    <input type="radio" name="occupation" value="Other"
                                                                        class="form-check-input">
                                                                    Other Healthcare Professional
                                                                </label>
                                                            </div>
                                                        </fieldset>

                                                        <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3"
                                                            data-for="practice_location">
                                                            <label for="practice_loc"
                                                                class="form-control-label mbr-fonts-style display-4">I
                                                                practice in:</label>
                                                            <select name="practice_location" aria-label="I practice in:"
                                                                class="form-control display-7" id="practice_loc">
                                                                <option value="" selected="">Select one:</option>
                                                                <option value="AB">Alberta</option>
                                                                <option value="BC">British Columbia</option>
                                                                <option value="MB">Manitoba</option>
                                                                <option value="NB">New Brunswick</option>
                                                                <option value="NL">Newfoundland and Labrador</option>
                                                                <option value="NS">Nova Scotia</option>
                                                                <option value="NT">Northwest Territories</option>
                                                                <option value="NU">Nunavut</option>
                                                                <option value="ON">Ontario</option>
                                                                <option value="PE">Prince Edward Island</option>
                                                                <option value="QC">Quebec</option>
                                                                <option value="SK">Saskatchewan</option>
                                                                <option value="YT">Yukon Territories</option>
                                                            </select>
                                                        </div>

                                                        <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3"
                                                            data-for="license_number">
                                                            <label class="form-control-label mbr-fonts-style display-4">
                                                                <span style="display: block; margin-bottom: 0.5rem;">My
                                                                    professional license or code number is:</span>
                                                                <input type="text" name="license_number"
                                                                    placeholder="Enter your license number or code"
                                                                    data-form-field="license_number"
                                                                    class="form-control display-7" value=""
                                                                    id="license_number-features03-f">
                                                            </label>
                                                        </div>

                                                        <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3"
                                                            data-for="certification">
                                                            <div class="form-check">
                                                                <label class="form-check-label display-7">
                                                                    <input type="checkbox" name="certification"
                                                                        data-form-field="certification"
                                                                        class="form-check-input"
                                                                        id="certification-features03-f">
                                                                    By checking this box, I am certifying that I am a
                                                                    Canadian Healthcare Professional.
                                                                </label>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-auto col mbr-section-btn">
                                                            <button type="submit" class="btn display-4">Enter</button>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-6 item features-without-image">
                                    <div class="item-wrapper large-radius">
                                        <div class="card-box card-wrap">
                                            <h2 class="item-number mbr-fonts-style display-2">Have you been prescribed
                                                Apo-Semaglutide?&nbsp;<br></h2>
                                            <p class="item-title mbr-fonts-style display-7">Enter the Apo-Semaglutide
                                                DIN to access useful information, support and resources tailored to
                                                Canadian patients.</p>
                                            <div class="label-wrapper">

                                                <!--Formbuilder Form-->
                                                <form action="" name="patient-form" method="GET"
                                                    class="mbr-form form-with-styler">
                                                    <div class="row">
                                                        <div hidden="hidden" data-form-alert=""
                                                            class="alert alert-success col-12"> Thanks for filling out
                                                            the form! </div>
                                                        <div hidden="hidden" data-form-alert-danger=""
                                                            class="alert alert-danger col-12"> Oops...! some problem!
                                                        </div>
                                                    </div>
                                                    <div class="dragArea row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 form-group mb-3"
                                                            data-for="din">
                                                            <label for="din"
                                                                class="form-control-label mbr-fonts-style display-4">DIN:</label>
                                                            <input type="text" name="din" id="din"
                                                                placeholder="Enter DIN" data-form-field="din"
                                                                class="form-control display-7" value="">
                                                        </div>

                                                        <div class="col-md-auto col mbr-section-btn mb-3">
                                                            <button type="submit" class="btn display-4">Enter</button>
                                                        </div>

                                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                                            <p class="mbr-fonts-style mb-1 display-4">
                                                                <a href="#" class="text-info">Where is the DIN #?</a>
                                                            </p>
                                                            <p class="mbr-fonts-style display-4">
                                                                DIN = Drug Identification Number
                                                            </p>
                                                        </div>
                                                    </div>

                                                </form>
                                                <!--Formbuilder Form-->
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- #include virtual="en/incl/global/footer.asp"-->
        <!-- #include virtual="en/incl/global/custom-code-footer.asp"-->
        <!-- #include virtual="en/incl/global/cookie-consent-bar.asp"-->

    </body>

    </html>