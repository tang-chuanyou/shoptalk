<?php

class Application_Model_Message
{
    protected $_shop_id;
    protected $_text;
    protected $_user_id;
    protected $_from_user_id;
    protected $_image_url;

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

    public function getFromUserId()
    {
        return $this->_from_user_id;
    }

    public function setFromUserId($user_id)
    {
        $this->_from_user_id = $user_id;
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

    public function toArray()
    {
        return array('shop_id'=>$this->_shop_id,
                     'text'=>$this->_text,
                     'user_id'=>$this->_user_id,
                     'from_user_id'=>$this->_from_user_id,
                     'image_url'=>$this->_image_url
        );
    }
}

