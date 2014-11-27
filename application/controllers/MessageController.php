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
        $mapper = new Application_Model_MessageMapper();
        $message->setShopId($this->_getParam("shop_id"))
                ->setText($this->_getParam("text"))
                ->setUserId($this->_getParam("user_id"))
                ->setOwnerUserId($this->_getParam("owner_user_id"))
                ->setImageURL($this->_getParam("image_url"));
        $fyi = $message->toArray();

        try{ 
            $mapper->save($message);
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
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
        $is_owner = $this->_getParam("is_owner");
        $fyi = ["shop_id"=>$shop->getId(), "user_id"=>$user->getId()];

        $mapper = new Application_Model_MessageMapper();

        try{
            if( $is_owner && $is_owner == 'Y') {
                $result = $mapper->getUserMessagesForOwner($shop, $user);
            }else {
                $result = $mapper->getUserMessages($shop, $user);
            }
            $fyi = $result;
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
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
        $fyi = ["shop_id"=>$shop->getId()];

        $mapper = new Application_Model_MessageMapper();

        try{
            $result = $mapper->getShopMessages($shop);
            $fyi = $result;
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

    /* close shop messsages by either user or owner */
    public function closeMessagesAction()
    {
        $status = '';
        $fyi = '';

        $shop = new Application_Model_Shop();
        $shop->setId($this->_getParam("shop_id"));
        $user = new Application_Model_User();
        $user->setId($this->_getParam("user_id"));
        $closed_by_user = $this->_getParam("closed_by_user");
        $closed_by_owner = $this->_getParam("closed_by_owner");
        $fyi = ["shop_id"=>$shop->getId(), "user_id"=>$user->getId(), "closed_by_user"=>$closed_by_user, "closed_by_owner"=>$closed_by_owner];

        $mapper = new Application_Model_MessageMapper();

        try {

            if( $closed_by_user ) {
                $mapper->closeByUser($shop, $user, $closed_by_user);
                $mapper->deleteMessages($shop, $user);
                $status = 'success';

                // insert a system message if any active message
                try {
                    if( count($mapper->getUserMessagesForOwner($shop, $user)) > 0 ) {
                        $system_text = "talk was closed by ". $closed_by_user;
                        $system_message = new Application_Model_Message();
                        $system_message->setShopId($shop->getId())
                                       ->setUserId($user->getId())
                                       ->setText($system_text)
                                       ->setOwnerUserId("[system]")
                                       ->setClosedByUser($closed_by_user)
                        ;
                        $mapper->save($system_message);
                    }
                }catch(Exception $e) {
                }


            } elseif ( $closed_by_owner ) {
                $mapper->closeByOwner($shop, $user, $closed_by_user);
                $mapper->deleteMessages($shop, $user);
                $status = 'success';

                // insert a system message if any active message
                try {
                    if( count($mapper->getUserMessages($shop, $user)) > 0 ) {
                        $system_text = "talk was closed by ". $closed_by_owner;
                        $system_message = new Application_Model_Message();
                        $system_message->setShopId($shop->getId())
                                       ->setUserId($user->getId())
                                       ->setText($system_text)
                                       ->setOwnerUserId("[system]")
                                       ->setClosedByOwner($closed_by_owner)
                        ;
                        $mapper->save($system_message);
                    }
                }catch(Exception $e) {
                }

            } else {
                $status = 'noaction';
            }

        } catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

}
