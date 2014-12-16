<?php

require_once('OAuth.php');

$GLOBALS = array(
'CONSUMER_KEY' => 'At0JvIC6ipoyBDlkLkdFfg',
'CONSUMER_SECRET' => 'N-5hqnGE-Z0HorComNGl1oe90Yk',
'TOKEN' => '0T3SB6CpDFR60Ua9c6rOrwmGsvGrTSi2',
'TOKEN_SECRET' => 'QIBmqY3Bj28pPmoq45-bNuKNtas',
'API_HOST' => 'api.yelp.com',
'DEFAULT_TERM' => 'dinner',
'DEFAULT_LOCATION' => 'San Francisco, CA',
'SEARCH_LIMIT' => 3,
'SEARCH_PATH' => '/v2/search/',
'BUSINESS_PATH' => '/v2/business/');

class SearchController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function searchAction()
    {
        $term = $this->_getParam('term');
        $location = $this->_getParam('location');
        $result = $this->search($term, $location);

        echo Zend_Json::encode($result);
        exit();
    }

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
    $token = new OAuthToken($GLOBALS['TOKEN'], $GLOBALS['TOKEN_SECRET']);
    // Consumer object built using the OAuth library
    $consumer = new OAuthConsumer($GLOBALS['CONSUMER_KEY'], $GLOBALS['CONSUMER_SECRET']);
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
    
    $url_params['term'] = $term ?: $GLOBALS['DEFAULT_TERM'];
    $url_params['location'] = $location?: $GLOBALS['DEFAULT_LOCATION'];
    $url_params['limit'] = $GLOBALS['SEARCH_LIMIT'];
    $search_path = $GLOBALS['SEARCH_PATH'] . "?" . http_build_query($url_params);
    
    return $this->request($GLOBALS['API_HOST'], $search_path);
}



}

