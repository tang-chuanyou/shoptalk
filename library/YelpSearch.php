<?php

include 'OAuth.php';

class YelpSearch
{
    public static $CONSUMER_KEY = 'At0JvIC6ipoyBDlkLkdFfg';
    public static $CONSUMER_SECRET = 'N-5hqnGE-Z0HorComNGl1oe90Yk';
    public static $TOKEN = '0T3SB6CpDFR60Ua9c6rOrwmGsvGrTSi2';
    public static $TOKEN_SECRET = 'QIBmqY3Bj28pPmoq45-bNuKNtas';
    public static $API_HOST = 'api.yelp.com';
    public static $DEFAULT_TERM = 'dinner';
    public static $DEFAULT_LOCATION = 'San Francisco, CA';
    public static $SEARCH_LIMIT = 3;
    public static $SEARCH_PATH = '/v2/search/';
    public static $BUSINESS_PATH = '/v2/business/';

    
    /** 
     * Makes a request to the Yelp API and returns the response
     * 
     * @param    $host    The domain host of the API 
     * @param    $path    The path of the APi after the domain
     * @return   The JSON response from the request      
     */
    function request($host, $path) {
        $unsigned_url = "http://" . $host . $path;
        // Token object built using the OAuth library
        $token = new OAuthToken($TOKEN, $TOKEN_SECRET);
        // Consumer object built using the OAuth library
        $consumer = new OAuthConsumer($CONSUMER_KEY, $CONSUMER_SECRET);
        // Yelp uses HMAC SHA1 encoding
        $signature_method = new OAuthSignatureMethod_HMAC_SHA1();
        $oauthrequest = OAuthRequest::from_consumer_and_token(
            $consumer, 
            $token, 
            'GET', 
            $unsigned_url
        );

        // Sign the request
        $oauthrequest->sign_request($signature_method, $consumer, $token);

        // Get the signed URL
        $signed_url = $oauthrequest->to_url();

        // Send Yelp API Call
        $ch = curl_init($signed_url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        $data = curl_exec($ch);
        curl_close($ch);

        return $data;
    }

    /**
     * Query the Search API by a search term and location 
     * 
     * @param    $term        The search term passed to the API 
     * @param    $location    The search location passed to the API 
     * @return   The JSON response from the request 
     */
    function search($term, $location) {
        $url_params = array();

        $url_params['term'] = $term ?: $DEFAULT_TERM;
        $url_params['location'] = $location?: $DEFAULT_LOCATION;
        $url_params['limit'] = $SEARCH_LIMIT;
        $search_path = $SEARCH_PATH . "?" . http_build_query($url_params);

        return $this->request($API_HOST, $search_path);
    }
}