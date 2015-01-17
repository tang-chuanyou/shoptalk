<?php

class UserSession
{
    public static $SESSION_USER_ID = 'user_id';
    public static $COOKIE_REMEMBER_ME = 'shoptalk';
    public static $SECRET_KEY = 'P#66e0tf';

    /**
     * set user information to flag active session
     * 
     * @param    $user_id    user id 
     * @param    $token_chk_func: callable function to check if user token is valid
     * @param    $token_sav_func: callable function to save user token
     * @return         
     */
    public function set($user_id, $token_chk_func = null, $token_sav_func = null) {
        if(UserSession::checkActiveSessionInCookie($token_chk_func)){
            return;
        }

        $_SESSION[UserSession::$SESSION_USER_ID] = $user_id;

        // set cookie for remember me
        $user_token = bin2hex(openssl_random_pseudo_bytes(120));
        $user_hash = md5(UserSession::$SECRET_KEY . $user_id . $user_token . UserSession::$SECRET_KEY);
        setcookie(UserSession::$COOKIE_REMEMBER_ME, $user_id . ':' . $user_token . ':' . $user_hash, time()+3600);
        if($token_sav_func != null) {
            call_user_func_array($token_sav_func, array($user_id, $user_token));
        }
    }

    /**
     * clear user information from session 
     * 
     * @param    NO 
     * @return   NO 
     */
    public function clear() {
        session_destroy();
        
        // clear cookie for remember me
        setcookie(UserSession::$COOKIE_REMEMBER_ME, null, -1);
    }
    
    /**
     * check if the session is active
     * and respond properly
     * 
     * @param    NO
     */
    public function checkActiveSession($token_chk_func = null) {
        if(! isset($_SESSION[UserSession::$SESSION_USER_ID]) ) {
            if(UserSession::checkActiveSessionInCookie($token_chk_func)){
                return;
            }

            echo Zend_Json::encode(array('fyi'=>'please sign in first.', 'status'=>'session-expired'));
            exit();
        }
    }

    /**
     * check in cookie if any valid login information
     *
     * @param    $token_chk_func: callable function to check if login information valid or not
     */

    protected function checkActiveSessionInCookie($token_chk_func = null) {
        //check remember me cookie
        if($_COOKIE[UserSession::$COOKIE_REMEMBER_ME]) {
            $the_cookie = $_COOKIE[UserSession::$COOKIE_REMEMBER_ME];
            $the_array = explode(':', $the_cookie);
            if(count($the_array) == 3) {
                $user_id = $the_array[0];
                $user_token = $the_array[1];
                $user_hash = $the_array[2];
                $the_hash = md5(UserSession::$SECRET_KEY . $user_id . $user_token . UserSession::$SECRET_KEY);
                if (strcmp($the_hash, $user_hash) == 0 && $token_chk_func != null) {
                    if(call_user_func_array($token_chk_func, array($user_id, $user_token))){
                        $_SESSION[UserSession::$SESSION_USER_ID] = $user_id;
                        return true;
                    }
                }
            } 
        }
        
        return false;
    }
}
