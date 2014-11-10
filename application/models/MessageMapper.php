<?php

class Application_Model_MessageMapper
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
            $this->setDbTable("Application_Model_DbTable_Messages");
        }
        return $this->_dbTable;
    }
    
    public function save(Application_Model_Message $message)
    {
        $data = array(
            'shop_id' => $message->getShopId(),
            'text' => $message->getText(),
            'user_id' => $message->getUserId(),
            'from_user_id' => $message->getFromUserId(),
            'image_url' => $product->getImageURL()
        );
        $this->getDbTable()->insert($data);
    }

    public function getUserMessages(Application_Model_Shop $shop, Application_Model_User $user)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_messages where shop_id = ? and user_id = ?", $shop->getId(), $user->getId())
                          ->fetchAll();
        return $result;
    }



    public function getShopMessages(Application_Model_Shop $shop)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_messages where shop_id = ?", $message->getShopId())
                          ->fetchAll();
        return $result;
    }
}

