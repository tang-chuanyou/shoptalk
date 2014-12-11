<?php

class Application_Model_Shop
{
    protected $_id;
    protected $_desc;
    protected $_imageURL;
    protected $_name;
    protected $_phone;
    protected $_longitude;
    protected $_latitude;
    protected $_street;
    protected $_city;
    protected $_state;
    protected $_zipCode;
    protected $_country;

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

    public function setLatitude($latitude)
    {
       $this->_latitude = $latitude;
       return $this;
    }

    public function getLatitude()
    {
        return $this->_latitude;
    }

    public function setLongitude($longitude)
    {
        $this->_longitude = $longitude;
        return $this;
    }

    public function getLongitude()
    {
        return $this->_longitude;
    }

    public function setStreet($street)
    {
        $this->_street = $street;
        return $this;
    }

    public function getStreet()
    {
        return $this->_street;
    }

    public function setCity($city)
    {
        $this->_city = $city;
        return $this;
    }

    public function getCity()
    {
        return $this->_city;
    }

    public function setState($state)
    {
        $this->_state = $state;
        return $this;
    }

    public function getState()
    {
        return $this->_state;
    }

    public function setZipCode($zip)
    {
        $this->_zipCode = $zip;
        return $this;
    }

    public function getZipCode()
    {
        return $this->_zipCode;
    }

    public function setCountry($country)
    {
        $this->_country = $country;
        return $this;
    }

    public function getCountry()
    {
        return $this->_country;
    }

}

