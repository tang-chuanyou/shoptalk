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
            'addr' => $shop->getAddr(),
            'description' => $shop->getDesc(),
            'image_url' => $shop->getImageURL(),
            'name' => $shop->getName(),
            'phone' => $shop->getPhone()
        );

        $this->getDbTable()->insert($data);
    }
}

