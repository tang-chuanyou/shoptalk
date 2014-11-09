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

    /* save shop product */
    /* logic - check if provided product already exists or not
               if not existing, add the product to the shop
    */
    public function saveProductAction()
    {
        $status = 'success';
        $fyi = '';

        $product = new Application_Model_ShopProduct();
        $product_mapper = new Application_Model_ShopProductMapper();
        $product->setShopId($this->_getParam("shop_id"))
                ->setName($this->_getParam("name"))
                ->setKey($this->_getParam("key"))
                ->setImageURL($this->_getParam("image_url"));
        $fyi = $product->toArray();

        try{
            // check if the product exists
            $find_result = $product_mapper->find($product);
            if(0 === count($find_result)) {
                // product not exists and addd product 
                $product_mapper->save($product);
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

    /* get all products for given shop */
    public function getProductsAction()
    {
        $status = 'success';
        $fyi = '';

        $shop = new Application_Model_Shop();
        $shop->setId($this->_getParam("shop_id"));
        $fyi = $shop->getId();
        $product_mapper = new Application_Model_ShopProductMapper();

        try{
            $find_result = $product_mapper->getProducts($shop);
            $fyi = $find_result;
            $status = 'status';
        }catch(Exception $e){
            $status = 'exception[' .  $e.getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

}
