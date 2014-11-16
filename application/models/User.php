<?php

class Application_Model_User
{
    protected $_user_id;
    protected $_password;
    protected $_status;

    public function getId()
    {
        return $this->_user_id;
    }

    public function setId($user_id)
    {
        $this->_user_id = $user_id;
        return $this;
    }

    public function getPassword()
    {
        return $this->_password;
    }

    public function setPassword($passwd)
    {
        $this->_password = password_hash($passwd, PASSWORD_DEFAULT);
        return $this;
    }

    public function getStatus()
    {
        return $this->_status;
    }

    public function setStatus($status)
    {
        $this->_status = $status;
        return $this;
    }

    public function toArray()
    {
        return array('user_id'=>$this->_user_id, 'status'=>$this->_status);
    }
}

