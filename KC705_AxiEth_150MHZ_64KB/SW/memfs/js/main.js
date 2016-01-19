var webserver = {
    init: function() {
        /* obtain a pointer to the led_form and its result */
        webserver.led_form = document.getElementById('led_form');
        webserver.led_results_div = document.getElementById('led_results');

        /* listen for the submit button press */
        YAHOO.util.Event.addListener(webserver.led_form, 'submit', webserver.led_submit);

        /* obtain a pointer to the led_form and its result */
        webserver.switch_form = document.getElementById('switch_form');
        webserver.switch_status_div = document.getElementById('switch_status');

        /* listen for the submit button press */
        YAHOO.util.Event.addListener(webserver.switch_form, 'submit', webserver.switch_submit);

        /* make a XMLHTTP request */
        YAHOO.util.Connect.asyncRequest('POST', '/cmd/switchxhr', webserver.switch_callback);
        YAHOO.util.Connect.asyncRequest('POST', '/cmd/ledxhr', webserver.led_callback);
    },
   
    led_submit: function(e) {
        YAHOO.util.Event.preventDefault(e);
        YAHOO.util.Connect.setForm(webserver.led_form);

        /* disable the form until result is obtained */
        for(var i=0; i<webserver.led_form.elements.length; i++) {
            webserver.led_form.elements[i].disabled = true;
        }

        /* make a XMLHTTP request */
        YAHOO.util.Connect.asyncRequest('POST', '/cmd/ledxhr', webserver.led_callback);

        /* fade in the results */
        // webserver.toggle_led_display();
        
        var result_fade_out = new YAHOO.util.Anim(webserver.led_results_div, 
                                    {opacity: { to: 0 }}, 
                                    0.25, YAHOO.util.Easing.easeOut);
        result_fade_out.animate();
    },

   switch_submit: function(e) {
        YAHOO.util.Event.preventDefault(e);
        YAHOO.util.Connect.setForm(webserver.switch_form);

        /* disable the form until result is obtained */
        for(var i=0; i<webserver.switch_form.elements.length; i++) {
            webserver.switch_form.elements[i].disabled = true;
        }

        /* make a XMLHTTP request */
        YAHOO.util.Connect.asyncRequest('POST', '/cmd/switchxhr', webserver.switch_callback);

        /* fade in the results */
        // webserver.toggle_switch_display();

        var result_fade_out = new YAHOO.util.Anim(webserver.switch_status_div, 
                                    {opacity: { to: 0 }}, 
                                    0.25, YAHOO.util.Easing.easeOut);
        result_fade_out.animate();
   },

   toggle_led_display: function() {
        var result_fade_out = new YAHOO.util.Anim(webserver.led_results_div, {
                                              opacity: { to: 0 }
                                           }, 0.25, YAHOO.util.Easing.easeOut);
        var result_fade_in = new YAHOO.util.Anim(webserver.led_results_div, {
                                              opacity: { to: 1 }
                                           }, 0, YAHOO.util.Easing.easeOut);

        /* fade in the new result */
        result_fade_out.onComplete.subscribe(function() {
                                         /* Re-enable the form. */
                                         for(var i=0; i<webserver.led_form.elements.length; i++) {
                                                webserver.led_form.elements[i].disabled = false;
                                         };
                                         result_fade_in.animate();
                                         });

        /* fade out the existing result */
        result_fade_out.animate();
   },
   
   toggle_switch_display: function() {
        var result_fade_out = new YAHOO.util.Anim(webserver.switch_status_div, {
                                              opacity: { to: 0 }
                                           }, 0.25, YAHOO.util.Easing.easeOut);
        var result_fade_in = new YAHOO.util.Anim(webserver.switch_status_div, {
                                              opacity: { to: 1 }
                                           }, 0, YAHOO.util.Easing.easeOut);

        /* fade in the new result */
        result_fade_out.onComplete.subscribe(function() {
                                         /* Re-enable the form. */
                                         for(var i=0; i<webserver.switch_form.elements.length; i++) {
                                                webserver.switch_form.elements[i].disabled = false;
                                         };
                                         result_fade_in.animate();
                                         });

        /* fade out the existing result */
        result_fade_out.animate();
   },
   
   led_callback: {
      success: function(o) {
            /* This turns the JSON string into a JavaScript object. */
            var response_obj = eval('(' + o.responseText + ')');
             
            // Set up the animation on the results div.
            var result_fade_in = new YAHOO.util.Anim(webserver.led_results_div, {
                                                        opacity: { to: 1 }
                                                        }, 0.25, YAHOO.util.Easing.easeIn);

            if (response_obj == 0)
                webserver.led_results_div.innerHTML = '<p><span style="background:#ffffaa">LEDs are now OFF.</span></p>';
            else
                webserver.led_results_div.innerHTML = '<p><span style="background:#33ff00">LEDs are now ON.</span></p>';

            /* enable after fade int */
            result_fade_in.onComplete.subscribe(function() {
                          /* Re-enable the form. */
                          for(var i=0; i<webserver.led_form.elements.length; i++) {
                                 webserver.led_form.elements[i].disabled = false;
                          };
                          });

            result_fade_in.animate();
      }
   },

   switch_callback: {
      success: function(o) {
	 /* This turns the JSON string into a JavaScript object. */
	 var response = eval('(' + o.responseText + ')');
	 
	 // Set up the animation on the results div.
	 var result_fade_in = new YAHOO.util.Anim(webserver.switch_status_div, {
							opacity: { to: 1 }
						     }, 0.25, YAHOO.util.Easing.easeIn);

         webserver.switch_status_div.innerHTML = '<p><span style="background:#33ff00"> ' + o.responseText + ' </span></p>';

         /* enable after fade int */
         result_fade_in.onComplete.subscribe(function() {
                                         /* Re-enable the form. */
                                         for(var i=0; i<webserver.switch_form.elements.length; i++) {
                                                webserver.switch_form.elements[i].disabled = false;
                                         };
                                         });

	 result_fade_in.animate();
      },

      failure: function(o) {
                   alert('XHR request failed: ' + o.statusText);
      },

      timeout: 10000
   }
};

YAHOO.util.Event.addListener(window, 'load', webserver.init);

function popup(url) {
	newwindow = window.open(url, 'image', 'height=400,width=550,resizeable=1,scrollbards,menubar=0,toolbar=0');
	if (window.focus) {newwindow.focus()}
	return false;
}
