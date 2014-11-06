<?php

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
        
        try{
            $upload = new Zend_File_Transfer();
            $upload -> receive();
       
            $filepath_tmp = $upload->getFileName();
            $filename = basename($filepath_tmp);
            $filepath_new = '/images/' . $filename;
            /*if(!rename($filepath_tmp, $_SERVER["DOCUMENT_ROOT"] . $filepath_new)) {
                $status = 'fail';
            }*/
             
            $fyi = urlencode($_SERVER["DOCUMENT_ROOT"] . $filepath_new);
        }catch(Exception $e){
            $status = 'exception';
            $fyi = $e->getMessage();
        }

        echo Zend_Json::encode(array('status'=>$status, 'fyi'=>$fyi));
        
        exit();
    }


}



