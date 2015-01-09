<?php

class UserSession
{
    public static $SESSION_USER_ID = 'user_id';

    /**
     * set user information to flag active session
     * 
     * @param    $user_id    user id 
     * @return   NO      
     */
    public function set($user_id) {
        $_SESSION[UserSession::$SESSION_USER_ID] = $user_id;
    }

    /**
     * clear user information from session 
     * 
     * @param    NO 
     * @return   NO 
     */
    public function clear() {
        session_detroy();
    }
    
    /**
     * check if the session is active
     * and respond properly
     * 
     * @param    NO
     */
    function checkActiveSession() {
        if(! isset($_SESSION[UserSession::$SESSION_USER_ID]) ) {
            echo Zend_Json::encode(array('fyi'=>'please sign in first.', 'status'=>'no-active-session'));
            exit();
        }
    }
}
