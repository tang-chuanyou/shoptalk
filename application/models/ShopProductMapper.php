<?php

class Application_Model_ShopProductMapper
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
            $this->setDbTable("Application_Model_DbTable_ShopProducts");
        }
        return $this->_dbTable;
    }
    
    public function find(Application_Model_ShopProduct $product)
    {
        $db = $this->getDbTable();
        $result = $db->find($product->getShopId(), $product->getName());
        return $result->toArray();
    }

    public function save(Application_Model_ShopProduct $product)
    {
        $data = array(
            'shop_id' => $product->getShopId(),
            'name' => $product->getName(),
            'product_key' => $product->getKey(),
            'image_url' => $product->getImageURL()
        );
        $this->getDbTable()->insert($data);
    }

    public function getProducts(Application_Model_Shop $shop)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_shopproducts where shop_id = ?", $shop->getId())
                          ->fetchAll();
        return $result;
    }

    public function delete(Application_Model_ShopProduct $product)
    {
        $db = $this->getDbTable();
        $where = array();
        $where[] = $db->getAdapter()->quoteInto('shop_id = ?', $product->getShopId());
        $where[] = $db->getAdapter()->quoteInto('name = ?', $product->getName()); 
        $db->delete($where);
    }
}

