<?php

class Mundipagg_Paymentmodule_Model_Boleto extends Mundipagg_Paymentmodule_Model_Standard
{
    protected $_code = 'paymentmodule_boleto';
    protected $_formBlockType = 'paymentmodule/form_builder';
    protected $_isGateway = true;
    protected $_canOrder  = true;
    protected $_canAuthorize = true;
    protected $_canCapture = true;
    protected $_canCapturePartial = false;
    protected $_canRefund = true;
    protected $_canVoid = true;
    protected $_canUseInternal = true;
    protected $_canUseCheckout = true;
    protected $_canUseForMultishipping = true;
    protected $_canSaveCc = false;
    protected $_canFetchTransactionInfo = false;
    protected $_canManageRecurringProfiles = false;
    protected $_allowCurrencyCode = array('BRL', 'USD', 'EUR');
    protected $_isInitializeNeeded = true;

    public function isAvailable($quote = null)
    {
        return true;
    }

    public function assignData($data)
    {
        parent::assignData($data);
    }

    public function getPaymentStructure()
    {
        return [
            'boleto'
        ];
    }
}
