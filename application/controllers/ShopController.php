<?php

class ShopController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function saveAction()
    {
        $status = 'success';
        $fyi = '';

        $shop = new Application_Model_Shop();
        $shop_mapper = new Application_Model_ShopMapper();
        $shop->setId($this->_getParam("shop_id"))
             ->setAddr($this->_getParam("addr"))
             ->setDesc($this->_getParam("desc"))
             ->setName($this->_getParam("name"))
             ->setPhone($this->_getParam("phone"))
             ->setImageURL($this->_getParam("image_url"));
        $fyi = $shop->getId();

        try{ 
            // check if the shop exists
            $find_result = $shop_mapper->find($shop);
            if(0 === count($find_result)) {
                // add if the shop does not exist
                $shop_mapper->save($shop);
            }else{
                // mark action status as 'exists'
                $status = 'exists';
            }
        }catch(Exception $e){
            $status = 'exception[' .  $e.getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }


}



