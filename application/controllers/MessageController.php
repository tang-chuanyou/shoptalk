<?php

class MessageController extends Zend_Controller_Action
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
        $status = '';
        $fyi = '';

        $message = new Application_Model_Message();
        $message_mapper = new Application_Model_MessageMapper();
        $message->setShopId($this->_getParam("shop_id"))
                ->setText($this->_getParam("text"))
                ->setUserId($this->_getParam("user_id"))
                ->setFromUserId($this->_getParam("from_user_id"))
                ->setImageURL($this->_getParam("image_url"));
        $fyi = $message->toArray();

        try{ 
            $shop_mapper->save($shop);
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception[' .  $e.getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

    /* get all messages for given shop and user */
    public function getUserMessagesAction()
    {
        $status = '';
        $fyi = '';

        $shop = new Application_Model_Shop();
        $shop->setId($this->_getParam("shop_id"));
        $user = new Application_Model_User();
        $user->setId($this->_getParam("user_id"));
        $fyi = @{@"shop_id":$shop->getId(), @"user_id":$user->getId()};

        $mapper = new Application_Model_MessageMapper();

        try{
            $result = $mapper->getUserMessages($shop, $user);
            $fyi = $result;
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception[' .  $e.getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

    /* get all messages for given shop */
    public function getShopMessagesAction()
    {
        $status = '';
        $fyi = '';

        $shop = new Application_Model_Shop();
        $shop->setId($this->_getParam("shop_id"));
        $fyi = @{@"shop_id":$shop->getId()};

        $mapper = new Application_Model_MessageMapper();

        try{
            $result = mapper->getUserMessages($shop);
            $fyi = $result;
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception[' .  $e.getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

}
