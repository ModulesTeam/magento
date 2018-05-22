<?php

class Mundipagg_Paymentmodule_MultibuyerController extends Mage_Core_Controller_Front_Action
{

    public function getRegionsAction()
    {
        $countryCode = $this->getRequest()->getParam('country_id');
        $regionCollection = Mage::getModel('directory/region_api')->items($countryCode);
        echo json_encode($regionCollection);
    }
}
