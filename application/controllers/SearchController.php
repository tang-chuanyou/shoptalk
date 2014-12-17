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
        $result = array();

        $term = $this->_getParam('term');
        $location = $this->_getParam('location');

        $yelp = new YelpSearch();
        $yelp_json = $yelp->search($term, $location);

        $yelp_array = Zend_Json::decode($yelp_json);
        $yelp_businesses = $yelp_array['businesses'];

        foreach ($yelp_businesses as $business) {
            $shop_id = $business['id'];
            $name = $business['name'];
            $image_url = $business['image_url'];
            $business_map = array('shop_id' => $shop_id,
                                  'name' => $name,
                                  'image_url' => $image_url);
            $result[] = $business_map;
        }

        echo Zend_Json::encode(array('term'=>$term, 'location'=>$location, 'result'=>$result));
        exit();
    }
}

