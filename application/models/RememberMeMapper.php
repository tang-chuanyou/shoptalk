<?php

class Application_Model_RememberMeMapper
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
            $this->setDbTable("Application_Model_DbTable_RememberMe");
        }
        return $this->_dbTable;
    }
    
    public static function save($user_id, $user_token)
    {
        $mapper =new Application_Model_RememberMeMapper();

        $data = array(
            'user_id' => $user_id,
            'user_token' => $user_token
        );
        $mapper->getDbTable()->insert($data);
    }

    public static function check($user_id, $user_token)
    {
        $adapter = Zend_Db_Table::getDefaultAdapter();
        $result = $adapter->query("select * from t_remember_me where user_id = ? and user_token = ?", array($user_id, $user_token))
                          ->fetchAll();
        return count($result) > 0 ? true: false;
    }
}

