<?php

class Application_Model_UserMapper
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
            $this->setDbTable("Application_Model_DbTable_Users");
        }
        return $this->_dbTable;
    }
    
    public function save(Application_Model_User $user)
    {
        $data = array(
            'user_id' => $user->getId(),
            'password' => $user->getPassword()
        );
        $this->getDbTable()->insert($data);
    }

    public function find(Application_Model_User $user)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_users where user_id = ? and password = ?", array($user->getId(), $user->getPassword()))
                          ->fetchAll();
        return $result;
    }

}

