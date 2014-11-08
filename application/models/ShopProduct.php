<?php

class Application_Model_ShopProduct
{
    protected $_shop_id;
    protected $_name;
    protected $_key;
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

    public function getName()
    {
        return $this->_name;
    }

    public function setName($name)
    {
        $this->_name = $name;
        return $this;
    }

    public function getKey()
    {
        return $this->_key;
    }

    public function setKey($key)
    {
        $this->_key = $key;
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
                     'name'=>$this->_name,
                     'product_key'=>$this->_key,
                     'image_url'=>$this->_image_url
        );
    }
}

