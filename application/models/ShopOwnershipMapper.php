<?php

class Application_Model_ShopOwnershipMapper
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
            $this->setDbTable("Application_Model_DbTable_ShopOwnership");
        }
        return $this->_dbTable;
    }
    
    public function find(Application_Model_ShopOwnership $ownership)
    {
        $db = $this->getDbTable();
        $result = $db->find($ownership->getUserId(), $ownership->getShopId());
        return $result->toArray();
    }

    public function save(Application_Model_ShopOwnership $ownership)
    {
        $data = array(
            'user_id' => $ownership->getUserId(),
            'shop_id' => $ownership->getShopId(),
            'description' => $ownership->getDescription(),
            'image_url' => $ownership->getImageURL()
        );
        $this->getDbTable()->insert($data);
    }

}

