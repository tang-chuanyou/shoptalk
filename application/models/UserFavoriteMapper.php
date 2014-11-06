<?php

class Application_Model_UserFavoriteMapper
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
            $this->setDbTable("Application_Model_DbTable_UserFavorites");
        }
        return $this->_dbTable;
    }
    
    public function find(Application_Model_UserFavorite $user_fav)
    {
        $db = $this->getDbTable();
        $result = $db->find($user_fav->getUserId(), $user_fav->getShopId());
        return $result->toArray();
    }

    public function save(Application_Model_UserFavorite $user_fav)
    {
        $data = array(
            'user_id' => $user_fav->getUserId(),
            'shop_id' => $user_fav->getShopId()
        );
        $this->getDbTable()->insert($data);
    }

    public function getFavorites(Application_Model_User $user)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select s.* from t_userfavorites uf join t_shops s on uf.shop_id = s.shop_id where uf.user_id = ?", $user->getId())
                          ->fetchAll();
        return $result;
    }

    public function delete(Application_Model_UserFavorite $user_fav)
    {
        $db = $this->getDbTable();
        $where = array();
        $where[] = $db->getAdapter()->quoteInto('user_id = ?', $user_fav->getUserId());
        $where[] = $db->getAdapter()->quoteInto('shop_id = ?', $user_fav->getShopId()); 
        $db->delete($where);
    }
}

