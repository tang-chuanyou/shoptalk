<?php

include 'YelpSearch.php';

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
        $fyi = '';
        $status = '';

        $term = $this->_getParam('term');
        $location = $this->_getParam('location');

        $result = array();
        try {
            $yelp = new YelpSearch();
            $yelp_json = $yelp->search($term, $location);

            $yelp_array = Zend_Json::decode($yelp_json);
            $yelp_businesses = $yelp_array['businesses'];

            foreach ($yelp_businesses as $business) {
                $shop_id = 'yelp::' . $business['id'];
                $name = $business['name'];
                $phone = $business['phone'];
                $shop_location = $business['location'];
                $street = $shop_location['address'][0];
                $city = $shop_location['city'];
                $state = $shop_location['state_code'];
                $zip_code = $shop_location['postal_code'];
                $country = $shop_location['country_code'];
                $coordinate = $shop_location['coordinate'];
                $latitude = $coordinate['latitude'];
                $longitude = $coordinate['longitude'];
                $image_url = $business['image_url'];
                $business_map = array('shop_id' => $shop_id,
                                      'name' => $name,
                                      'phone' => $phone,
                                      'image_url' => $image_url,
                                      'street' => $street,
                                      'city' => $city,
                                      'state' => $state,
                                      'zip_code' => $zip_code,
                                      'country' => $country,
                                      'latitude' => $latitude,
                                      'longitude' => $longitude
                );
                $result[] = $business_map;
            }

            $fyi = $result;
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
        }

        echo Zend_Json::encode(array('fyi'=>$fyi, 'status'=>$status));
        exit();
    }

    public function searchByCoordinateAction()
    {
        $fyi = '';
        $status = '';

        $term = $this->_getParam('term');
        $coordinate = $this->_getParam('coordinate');

        $result = array();
        try {
            $yelp = new YelpSearch();
            $yelp_json = $yelp->searchByCoordinate($term, $coordinate);

            $yelp_array = Zend_Json::decode($yelp_json);
            $yelp_businesses = $yelp_array['businesses'];

            foreach ($yelp_businesses as $business) {
                $shop_id = 'yelp::' . $business['id'];
                $name = $business['name'];
                $phone = $business['phone'];
                $shop_location = $business['location'];
                $street = $shop_location['address'][0];
                $city = $shop_location['city'];
                $state = $shop_location['state_code'];
                $zip_code = $shop_location['postal_code'];
                $country = $shop_location['country_code'];
                $coordinate = $shop_location['coordinate'];
                $latitude = $coordinate['latitude'];
                $longitude = $coordinate['longitude'];
                $image_url = $business['image_url'];
                $business_map = array('shop_id' => $shop_id,
                                      'name' => $name,
                                      'phone' => $phone,
                                      'image_url' => $image_url,
                                      'street' => $street,
                                      'city' => $city,
                                      'state' => $state,
                                      'zip_code' => $zip_code,
                                      'country' => $country,
                                      'latitude' => $latitude,
                                      'longitude' => $longitude
                );
                $result[] = $business_map;
            }

            $status = $result;
        }catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
        }

        echo Zend_Json::encode(array('fyi'=>$fyi, 'status'=>$status));
        exit();
    }
}

