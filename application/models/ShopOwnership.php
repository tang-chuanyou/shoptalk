<?php

class Application_Model_ShopOwnership
{
    protected $_user_id;
    protected $_shop_id;
    protected $_description;
    protected $_image_url;
    protected $_status;

    public function setUserId($user_id)
    {
        $this->_user_id = $user_id;
        return $this;
    }

    public function getUserId()
    {
        return $this->_user_id;
    }

    public function setShopId($shop_id)
    {
        $this->_shop_id = $shop_id;
        return $this;
    }

    public function getShopId()
    {
        return $this->_shop_id;
    }

    public function setDescription($desc)
    {
        $this->_description = $desc;
        return $this;
    }

    public function getDescription()
    {
        return $this->_description;
    }

    public function setImageURL($url)
    {
        $this->_image_url = $url;
        return $this;
    }

    public function getImageURL()
    {
        return $this->_image_url;
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
        return array('user_id'=> $this->getUserId(),
                     'shop_id'=> $this->getShopId(),
                     'description'=> $this->getDescription(),
                     'image_url'=> $this->getImageURL(),
                     'status'=>$this->getStatus()
        );
    }
}

