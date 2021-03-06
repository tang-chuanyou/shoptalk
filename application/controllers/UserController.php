<?php

include 'UserSession.php';

class UserController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        /* default action*/
    }

    public function saveFavoriteAction()
    {
        $status = 'success';
        $fyi = ''; 

        UserSession::checkActiveSession('Application_Model_RememberMeMapper::check');

        $user_fav = new Application_Model_UserFavorite();
        $userfav_mapper = new Application_Model_UserFavoriteMapper();
        $user_fav->setUserId($_SESSION[UserSession::$SESSION_USER_ID])
                 ->setShopId($this->_getParam("shop_id"));
        $fyi = 'user[' . $user_fav->getUserId() . ']shop[' . $user_fav->getShopId() . ']';

        try{
            // check if the user favorite exists
            $find_result = $userfav_mapper->find($user_fav);
            if(0 === count($find_result)) {
                // add if the user favorite does not exist
                $userfav_mapper->save($user_fav);
            }else{
                // mark action status as 'exists'
                $status = 'exists';
            }
        }catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

    public function getFavoritesAction()
    {
        $status = 'success';
        $fyi = array();

        UserSession::checkActiveSession('Application_Model_RememberMeMapper::check');

        $user = new Application_Model_User();
        $userfav_mapper = new Application_Model_UserFavoriteMapper();

        $user->setId($_SESSION[UserSession::$SESSION_USER_ID]);

        try{
            $get_result = $userfav_mapper->getFavorites($user);
            $fyi = $get_result;
        }catch(Exception $e){
            $status = 'exception[' . $e->getMessage() . ']';
        }
        
        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
   
        exit();
    }

    public function checkFavoriteAction()
    {
        $status = 'success';
        $fyi = '';

        UserSession::checkActiveSession();

        $user_fav = new Application_Model_UserFavorite();
        $userfav_mapper = new Application_Model_UserFavoriteMapper();
        $user_fav->setUserId($_SESSION[UserSession::$SESSION_USER_ID])
                 ->setShopId($this->_getParam("shop_id"));
        $fyi = 'user[' . $user_fav->getUserId() . ']shop[' . $user_fav->getShopId() . ']';

        try{
            // check if the user favorite exists
            $find_result = $userfav_mapper->find($user_fav);
            if(0 < count($find_result)) {
                $fyi = 'true';
            }else {
                $fyi = 'false';
            }
        }catch(Exception $e){
            $status = 'exception[' .  $e->getMessage() . ']';
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);
        exit();
    }

    public function deleteFavoriteAction()
    {
        $status = 'success';
        $fyi = '';

        UserSession::checkActiveSession();

        $user_fav = new Application_Model_UserFavorite();
        $userfav_mapper = new Application_Model_UserFavoriteMapper();

        $user_fav->setUserId($_SESSION[UserSession::$SESSION_USER_ID])
                 ->setShopId($this->_getParam("shop_id"))
        ;
        $fyi = 'user[' . $user_fav->getUserId() . ']shop[' . $user_fav->getShopId() . ']';

        try{
            $userfav_mapper->delete($user_fav);
        }catch(Exception $e){
            $status = 'exception';
            $fyi =  $e->getMessage();
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);

        exit();
    }

    public function applyShopOwnershipAction()
    {
        $status = 'success';
        $fyi = '';

        UserSession::checkActiveSession();

        $ownership = new Application_Model_ShopOwnership();
        $mapper = new Application_Model_ShopOwnershipMapper();
        $ownership->setUserId($_SESSION[UserSession::$SESSION_USER_ID])
                  ->setShopId($this->_getParam("shop_id"))
                  ->setDescription($this->_getParam("description"))
                  ->setImageURL($this->_getParam("image_url"))
        ;
        $fyi = $ownership->toArray();

        try{
            //check if ownership record exists
            $check_result = $mapper->find($ownership);

            if(0 < count($check_result)) {
                // ownership exists
                $status = 'exists';
            }else{
                // ownership not exists
                $mapper->save($ownership);
            }
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);

        exit();
    }

    public function applyShopOwnershipAndApproveAction()
    {
        $status = 'success';
        $fyi = '';

        UserSession::checkActiveSession();

        $ownership = new Application_Model_ShopOwnership();
        $mapper = new Application_Model_ShopOwnershipMapper();
        $ownership->setUserId($_SESSION[UserSession::$SESSION_USER_ID])
                  ->setShopId($this->_getParam("shop_id"))
                  ->setDescription($this->_getParam("description"))
        ;
        $fyi = $ownership->toArray();

        try{
            //check if ownership record exists
            $check_result = $mapper->find($ownership);

            if(0 < count($check_result)) {
                // ownership exists
                $status = 'exists';
            }else{
                // ownership not exists
                $mapper->saveAndApprove($ownership);
            }
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);

        exit();
    }


    public function checkOwnershipAction()
    {
        $status = 'success';
        $fyi = '';

        UserSession::checkActiveSession();

        $ownership = new Application_Model_ShopOwnership();
        $mapper = new Application_Model_ShopOwnershipMapper();
        $ownership->setUserId($_SESSION[UserSession::$SESSION_USER_ID])
                  ->setShopId($this->_getParam("shop_id"))
        ;
        $fyi = $ownership->toArray();

        try{
            //check if ownership record exists
            $check_result = $mapper->find($ownership);

            if(0 < count($check_result)) {
                // ownership exists
                $status = 'exists';
                $fyi = $check_result[0]['status'];
            }else{
                // ownership not exists
                $status = 'not exists';
            }
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);

        exit();
    }

    public function signInAction()
    {
        $status = 'fail';
        $fyi = '';

        $user = new Application_Model_User();
        $mapper = new Application_Model_UserMapper();
        $user->setId($this->_getParam("user_id"))
             ->setPassword($this->_getParam("password"))
        ;
        $fyi = $user->toArray();

        try{
            //check if user record exists
            $check_result = $mapper->find($user);

            if($check_result && 0 < count($check_result)) {
                // user exists
                $status = 'exists';
                $fyi = $check_result;
                // set session
                UserSession::set($user->getId(), 'Application_Model_RememberMeMapper::check', 'Application_Model_RememberMeMapper::save');
            }else{
                // user not exists
                $status = 'not exists';
            }
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);

        exit();
    }

    public function signOutAction()
    {
        $status = 'fail';
        $fyi = '';

        try{
            $user = new Application_Model_User();
            $user->setId($this->_getParam("user_id"));

            $fyi = $user->toArray();

            UserSession::clear();
             
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);

        exit();
    }


    public function signUpAction()
    {
        $status = 'fail';
        $fyi = '';

        $user = new Application_Model_User();
        $mapper = new Application_Model_UserMapper();
        $user->setId($this->_getParam("user_id"))
             ->setPassword($this->_getParam("password"))
        ;
        $fyi = $user->toArray();

        try{
            $check_result = $mapper->save($user);
            $status = 'success';
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        $result = array('fyi'=>$fyi, 'status'=>$status);
        echo Zend_Json::encode($result);

        exit();
    }

}


