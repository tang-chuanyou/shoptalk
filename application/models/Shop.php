<?php

class Application_Model_Shop
{
    protected $_id;
    protected $_addr;
    protected $_desc;
    protected $_imageURL;
    protected $_name;
    protected $_phone;

    public function __construct(array $options = null)
    {
        if(is_array($options)) {
            $this->setOptions($options);
        }
    }

    public function __set($name, $value)
    {
        $method = 'set' . $name;
        if(('mapper' == $name)|| !method_exists($this, $method)) {
            throw new Exception("Invalid shop property!");
        }
        $this->$method($value);
    }

    public function __get($name)
    {
        $method = 'get' . $name;
        if(('mapper' == $name) || !method_exists($this, $method)) {
            throw new Exception("Invalue shop property!");
        }
        return $this->$method();
    }
   
    public function setOptions(array $options)
    {
        $methods = get_class_methods($this);
        foreach($options as $key => $value) {
            $method = 'set' . ucfirst($key);
            if(in_array($method, $methods)) {
                $this->$method($value);
            }
        }
        return $this;
    }

    public function setId($id)
    {
        $this->_id = $id;
        return $this;
    }

    public function getId()
    {
        return $this->_id;
    }

    public function setAddr($addr)
    {
        $this->_addr = $addr;
        return $this;
    }

    public function getAddr()
    {
        return $this->_addr;
    }

    public function setDesc($desc)
    {
        $this->_desc = $desc;
        return $this;
    }

    public function getDesc()
    {
        return $this->_desc;
    }

    public function setImageURL($url)
    {
        $this->_imageURL = $url;
        return $this;
    }

    public function getImageURL()
    {
        return $this->_imageURL;
    }

    public function setName($name)
    {
        $this->_name = $name;
        return $this;
    }

    public function getName()
    {
        return $this->_name;
    }

    public function setPhone($phone)
    {
        $this->_phone = $phone;
        return $this;
    }

    public function getPhone()
    {
        return $this->_phone;
    }

}

