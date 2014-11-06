<?php

class Application_Model_User
{
    protected $_user_id;

    public function getId()
    {
        return $this->_user_id;
    }

    public function setId($user_id)
    {
        $this->_user_id = $user_id;
        return $this;
    }

}

