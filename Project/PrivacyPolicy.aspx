<%@ Page Title="" Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="PrivacyPolicy.aspx.cs" Inherits="FreePlay.PrivacyPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Privacy Policy</title>
    <style>
        #ppBody {
            font-size: 11pt;
            width: 100%;
            margin: 0 auto;
            text-align: justify;
        }

        #ppHeader {
            font-family: verdana;
            font-size: 21pt;
            width: 100%;
            margin: 0 auto;
        }

        .ppConsistencies {
            display: none;
        }
    </style>
    
    <style>
        #TopSlider{
            display:none !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div id='ppHeader'>Privacy Policy</div>
        <div id='ppBody'>
            <div class='ppConsistencies'>
                <div class='col-2'>
                    <div class="quick-links text-center">Information Collection</div>
                </div>
                <div class='col-2'>
                    <div class="quick-links text-center">Information Usage</div>
                </div>
                <div class='col-2'>
                    <div class="quick-links text-center">Information Protection</div>
                </div>
                <div class='col-2'>
                    <div class="quick-links text-center">Cookie Usage</div>
                </div>
                <div class='col-2'>
                    <div class="quick-links text-center">3rd Party Disclosure</div>
                </div>
                <div class='col-2'>
                    <div class="quick-links text-center">3rd Party Links</div>
                </div>
            </div>
            <div style='clear: both; height: 10px;'></div>
            <div class='ppConsistencies'>
                <div class='col-2'>
                    <div class="col-12 quick-links2 gen-text-center">Google AdSense</div>
                </div>
                <div class='col-2'>
                    <div class="col-12 quick-links2 gen-text-center">
                        Fair Information Practices                   
                    <div class="col-8 gen-text-left gen-xs-text-center" style="font-size: 12px; position: relative; left: 20px;">
                        Fair information<br>
                        Practices
                    </div>
                    </div>
                    <div class='col-2'>
                        <div class="col-12 quick-links2 gen-text-center coppa-pad">COPPA                </div>
                    </div>
                    <div class='col-2'>
                        <div class="col-12 quick-links2 quick4 gen-text-center caloppa-pad">CalOPPA                </div>
                    </div>
                    <div class='col-2'>
                        <div class="quick-links2 gen-text-center">CAN-SPAM</div>
                    </div>
                    <div class='col-2'>
                        <div class="quick-links2 gen-text-center">
                            Our Contact Information<br>
                        </div>
                    </div>
                </div>
                <div style='clear: both; height: 10px;'></div>
                <div class='innerText'>
                    This privacy policy has been compiled to better serve those who are concerned with how their 'Personally Identifiable Information' (PII) is being used online. PII, as described in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.<br>
                </div>
                <span id='infoCo'></span>
                <br>
                <div class='grayText'><strong>What personal information do we collect from the people that visit our blog, website or app?</strong></div>
                <br />
                <div class='innerText'>We do not collect information from visitors of our site.</div>
                or other details to help you with your experience.
            </div>
            <br>
            <div class='grayText'>
                <strong>When do we collect information?</strong>
            </div>
            <br />
            <div class='innerText'>We collect information from you when you fill out a form or enter information on our site.</div>
            <br>
            Provide us with feedback on our products or services
    <span id='infoUs'></span>
            <br>
            <div class='grayText'><strong>How do we use your information? </strong></div>
            <br />
            <div class='innerText'>
                We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:<br>
                <br>
            </div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> To personalize your experience and to allow us to deliver the type of content and product offerings in which you are most interested.</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> To improve our website in order to better serve you.</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> To allow us to better service you in responding to your customer service requests.</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> To administer a contest, promotion, survey or other site feature.</div>
            <span id='infoPro'></span>
            <br>
            <div class='grayText'><strong>How do we protect your information?</strong></div>
            <br />
            <div class='innerText'>We do not use vulnerability scanning and/or scanning to PCI standards.</div>
            <div class='innerText'>An external PCI compliant payment gateway handles all CC transactions.</div>
            <div class='innerText'>
                We use regular Malware Scanning.<br>
                <br>
            </div>
            <div class='innerText'>Your personal information is contained behind secured networks and is only accessible by a limited number of persons who have special access rights to such systems, and are required to keep the information confidential. In addition, all sensitive/credit information you supply is encrypted via Secure Socket Layer (SSL) technology. </div>
            <br>
            <div class='innerText'>We implement a variety of security measures when a user enters, submits, or accesses their information to maintain the safety of your personal information.</div>
            <br>
            <div class='innerText'>All transactions are processed through a gateway provider and are not stored or processed on our servers.</div>
            <span id='coUs'></span>
            <br>
            <div class='grayText'><strong>Do we use 'cookies'?</strong></div>
            <br />
            <div class='innerText'>Yes. Cookies are small files that a site or its service provider transfers to your computer's hard drive through your Web browser (if you allow) that enables the site's or service provider's systems to recognize your browser and capture and remember certain information. For instance, we use cookies to help us remember and process the items in your shopping cart. They are also used to help us understand your preferences based on previous or current site activity, which enables us to provide you with improved services. We also use cookies to help us compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</div>
            <div class='innerText'>
                <br>
                <strong>We use cookies to:</strong>
            </div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Help remember and process the items in the shopping cart.</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Understand and save user's preferences for future visits.</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Keep track of advertisements.</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Compile aggregate data about site traffic and site interactions in order to offer better site experiences and tools in the future. We may also use trusted third-party services that track this information on our behalf.</div>
            <div class='innerText'>
                <br>
                You can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser settings. Since browser is a little different, look at your browser's Help Menu to learn the correct way to modify your cookies.<br>
            </div>
            <div class='innerText'>
                <br>
                <strong>If users disable cookies in their browser:</strong>
            </div>
            <br>
            <div class='innerText'>If you turn cookies off, Some of the features that make your site experience more efficient may not function properly.Some of the features that make your site experience more efficient and may not function properly.</div>
            <br>
            <span id='trDi'></span>
            <br>
            <div class='grayText'><strong>Third-party disclosure</strong></div>
            <br />
            <div class='innerText'>We do not sell, trade, or otherwise transfer to outside parties your Personally Identifiable Information.</div>
            <span id='trLi'></span>
            <br>
            <div class='grayText'><strong>Third-party links</strong></div>
            <br />
            <div class='innerText'>Occasionally, at our discretion, we may include or offer third-party products or services on our website. These third-party sites have separate and independent privacy policies. We therefore have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our site and welcome any feedback about these sites.</div>
            <span id='gooAd'></span>
            <br>
            <div class='blueText'><strong>Google</strong></div>
            <br />
            <div class='innerText'>
                Google's advertising requirements can be summed up by Google's Advertising Principles. They are put in place to provide a positive experience for users. https://support.google.com/adwordspolicy/answer/1316548?hl=en
        <br>
                <br>
            </div>
            <div class='innerText'>We use Google AdSense Advertising on our website.</div>
            <div class='innerText'>
                <br>
                Google, as a third-party vendor, uses cookies to serve ads on our site. Google's use of the DART cookie enables it to serve ads to our users based on previous visits to our site and other sites on the Internet. Users may opt-out of the use of the DART cookie by visiting the Google Ad and Content Network privacy policy.<br>
            </div>
            <div class='innerText'>
                <br>
                <strong>We have implemented the following:</strong>
            </div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Remarketing with Google AdSense</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Google Display Network Impression Reporting</div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Demographics and Interests Reporting</div>
            <div class='innerText'>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> DoubleClick Platform Integration<br>
            </div>
            <br>
            <div class='innerText'>We, along with third-party vendors such as Google use first-party cookies (such as the Google Analytics cookies) and third-party cookies (such as the DoubleClick cookie) or other third-party identifiers together to compile data regarding user interactions with ad impressions and other ad service functions as they relate to our website. </div>
            <div class='innerText'>
                <br>
                <strong>Opting out:</strong><br>
                Users can set preferences for how Google advertises to you using the Google Ad Settings page. Alternatively, you can opt out by visiting the Network Advertising Initiative Opt Out page or by using the Google Analytics Opt Out Browser add on.
            </div>
            <span id='coppAct'></span>
            <br>
            <div class='blueText'><strong>COPPA (Children Online Privacy Protection Act)</strong></div>
            <br />
            <div class='innerText'>
                When it comes to the collection of personal information from children under the age of 13 years old, the Children's Online Privacy Protection Act (COPPA) puts parents in control.  The Federal Trade Commission, United States' consumer protection agency, enforces the COPPA Rule, which spells out what operators of websites and online services must do to protect children's privacy and safety online.<br>
                <br>
            </div>
            <div class='innerText'>
                We market to<div class='innerText'>We do not collect information from children under 13</div>
                children under 13.
            </div>
            <div class='innerText'>Do we let third-parties, including ad networks or plug-ins collect PII from children under 13?</div>
            <div class='innerText'>No</div>
            <div class='innerText'>
                <br>
                <strong>In order to remove your child's information please contact the following personnel: </strong>
            </div>
            <div class='innerText'>
                <br>
                <strong>We adhere to the following COPPA tenants: </strong>
            </div>
            <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Parents can review, delete, manage or refuse with whom their child's information is shared through  contacting us directly.</div>
            or contacting us directly.
        </div>
        <br>
        <span id='ftcFip'></span>
        <br>
        <div class='blueText'><strong>Fair Information Practices</strong></div>
        <br />
        <div class='innerText'>
            The Fair Information Practices Principles form the backbone of privacy law in the United States and the concepts they include have played a significant role in the development of data protection laws around the globe. Understanding the Fair Information Practice Principles and how they should be implemented is critical to comply with the various privacy laws that protect personal information.<br>
            <br>
        </div>
        <div class='innerText'><strong>In order to be in line with Fair Information Practices we will take the following responsive action, should a data breach occur:</strong></div>
        <div class='innerText'>We will notify the users via in-site notification</div>
        <div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Within 7 business days</div>
        <div class='innerText'>
            <br>
            We also agree to the Individual Redress Principle which requires that individuals have the right to legally pursue enforceable rights against data collectors and processors who fail to adhere to the law. This principle requires not only that individuals have enforceable rights against data users, but also that individuals have recourse to courts or government agencies to investigate and/or prosecute non-compliance by data processors.
        </div>
    </div>
</asp:Content>
