<?php

class Application_Model_RememberMe
{
    protected $_user_id;
    protected $_user_token;
    protected $_creation_timestamp;

    public function getUserId()
    {
        return $this->_user_id;
    }

    public function setUserId($user_id)
    {
        $this->_user_id = $user_id;
        return $this;
    }

    public function getUserToken()
    {
        return $this->_user_token;
    }

    public function setUserToken($token)
    {
        $this->_user_token = $token;
        return $this;
    }

    public function getCreationTimestamp()
    {
        return $this->_creation_timestamp;
    }

    public function setCreationTimestamp($timestamp)
    {
        $this->_creation_timestamp = $timestamp;
        return $this;
    }

}

