<?php

class Application_Model_Message
{
    protected $_shop_id;
    protected $_text;
    protected $_user_id;
    protected $_owner_user_id;
    protected $_image_url;
    protected $_closed_by_user;
    protected $_closed_by_owner;

    public function getShopId()
    {
        return $this->_shop_id;
    }

    public function setShopId($shop_id)
    {
        $this->_shop_id = $shop_id;
        return $this;
    }

    public function getText()
    {
        return $this->_text;
    }

    public function setText($text)
    {
        $this->_text = $text;
        return $this;
    }

    public function getUserId()
    {
        return $this->_user_id;
    }

    public function setUserId($user_id)
    {
        $this->_user_id = $user_id;
        return $this;
    }

    public function getOwnerUserId()
    {
        return $this->_owner_user_id;
    }

    public function setOwnerUserId($user_id)
    {
        $this->_owner_user_id = $user_id;
        return $this;
    }

    public function getImageURL()
    {
        return $this->_image_url;
    }

    public function setImageURL($url)
    {
        $this->_image_url = $url;
        return $this;
    }

    public function getClosedByUser()
    {
        return $this->_closed_by_user;
    }

    public function setClosedByUser($user_id)
    {
        $this->_closed_by_user = $user_id;
        return $this;
    }

    public function getClosedByOwner()
    {
        return $this->_closed_by_owner;
    }

    public function setClosedByOwner($user_id)
    {
        $this->_closed_by_owner = $user_id;
        return $this;
    }

    public function toArray()
    {
        return array('shop_id'=>$this->_shop_id,
                     'text'=>$this->_text,
                     'user_id'=>$this->_user_id,
                     'owner_user_id'=>$this->_owner_user_id,
                     'image_url'=>$this->_image_url,
                     'closed_by_user'=>$this->_closed_by_user,
                     'closed_by_owner'=>$this->_closed_by_owner
        );
    }
}

