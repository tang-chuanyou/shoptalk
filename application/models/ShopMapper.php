<?php

class Application_Model_ShopMapper
{
    protected $_dbTable;

    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)){
            $dbTable = new $dbTable();
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    public function getDbTable()
    {
        if(null === $this->_dbTable){
            $this->setDbTable("Application_Model_DbTable_Shops");
        }
        return $this->_dbTable;
    }

    public function find(Application_Model_Shop $shop)
    {
        $result = $this->getDbTable()->find($shop->getId());
        return $result->toArray();
    }

    public function save(Application_Model_Shop $shop)
    {
        $data = array(
            'shop_id' => $shop->getId(),
            'description' => $shop->getDesc(),
            'image_url' => $shop->getImageURL(),
            'name' => $shop->getName(),
            'phone' => $shop->getPhone(),
            'latitude' => $shop->getLatitude(),
            'longitude' => $shop->getLongitude(),
            'street' => $shop->getStreet(),
            'city' => $shop->getCity(),
            'state' => $shop->getState(),
            'zip_code' => $shop->getZipCode(),
            'country' => $shop->getCountry(),
            'terms'=> $shop->getTerms()
        );

        $this->getDbTable()->insert($data);
    }

    public function update(Application_Model_Shop $shop)
    {
        $db = $this->getDbTable();
        $data = array('phone' => $shop->getPhone(),
                      'image_url' => $shop->getImageURL(),
                      'terms' => $shop->getTerms());
        $where = $db->getAdapter()->quoteInto('shop_id = ?', $shop->getId());
        $db->update($data, $where);
    }

    public function searchByCoordinate($lat, $lon, $dist, $terms)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("call p_shopsbydist(?, ?, ?, ?)", array($lat, $lon, $dist, '%'.$terms.'%'))
                          ->fetchAll();
        return $result;
    }

}

