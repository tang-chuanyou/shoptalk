<?php

include 'UserSession.php';

class ImageController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function uploadAction()
    {
        $status = 'fail';
        $fyi = '';
        
        UserSession::checkActiveSession();

        try{
            $upload = new Zend_File_Transfer_Adapter_Http();

            if($upload -> receive()) {
                $filepath = $upload->getFileName();
                $filename = basename($filepath);
                $filepath_new = '/images/' . $filename;
                if(rename ($filepath, $_SERVER["DOCUMENT_ROOT"] . $filepath_new)) {
                    $fyi = urlencode($filepath_new);
                    $status = 'success';
                }else {
                    $fyi = error_get_last();
                    $status = 'error';
                }
            }else {
                $status = 'fail';
                $fyi = $upload->getMessages();
            }
             
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        echo Zend_Json::encode(array('status'=>$status, 'fyi'=>$fyi));
        
        exit();
    }


}



