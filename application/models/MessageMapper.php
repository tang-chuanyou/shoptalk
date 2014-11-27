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
            'owner_user_id' => $message->getOwnerUserId(),
            'image_url' => $message->getImageURL(),
            'closed_by_user' => $message->getClosedByUser(),
            'closed_by_owner' => $message->getClosedByOwner()
        );
        $this->getDbTable()->insert($data);
    }

    public function closeByUser(Application_Model_Shop $shop, Application_Model_User $user, $user_id)
    {
        $db = $this->getDbTable();
        $data = array('closed_by_user'=>$user_id);
        $where = array();
        $where[] = $db->getAdapter()->quoteInto('shop_id = ?', $shop->getId());
        $where[] = $db->getAdapter()->quoteInto('user_id = ?', $user->getId());
        $where[] = 'closed_by_user is null';
        $db->update($data, $where);
    }

    public function closeByOwner(Application_Model_Shop $shop, Application_Model_User $user, $user_id)
    {
        $db = $this->getDbTable();
        $data = array('closed_by_owner'=>$user_id);
        $where = array();
        $where[] = $db->getAdapter()->quoteInto('shop_id = ?', $shop->getId());
        $where[] = $db->getAdapter()->quoteInto('user_id = ?', $user->getId());
        $where[] = 'closed_by_owner is null';
        $db->update($data, $where);
    }

    public function deleteMessages(Application_Model_Shop $shop, Application_Model_User $user)
    {
        $db = $this->getDbTable();
        $where = array();
        $where[] = $db->getAdapter()->quoteInto('shop_id = ?', $shop->getId());
        $where[] = $db->getAdapter()->quoteInto('user_id = ?', $user->getId());
        $where[] = 'closed_by_user is not null';
        $where[] = 'closed_by_owner is not null';
        $db->delete($where);
    }

    public function getUserMessages(Application_Model_Shop $shop, Application_Model_User $user)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_messages where shop_id = ? and user_id = ? and closed_by_user is null", array($shop->getId(), $user->getId()))
                          ->fetchAll();
        return $result;
    }

    public function getUserMessagesForOwner(Application_Model_Shop $shop, Application_Model_User $user)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_messages where shop_id = ? and user_id = ? and closed_by_owner is null", array($shop->getId(), $user->getId()))
                          ->fetchAll();
        return $result;
    }

    public function getShopMessages(Application_Model_Shop $shop)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_messages where shop_id = ? and closed_by_owner is null", $shop->getId())
                          ->fetchAll();
        return $result;
    }
}

