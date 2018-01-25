<?php

class Mundipagg_Paymentmodule_Model_Enum_Orderhistory
{
    private $chargeCreated  = 'MP - Charge created';
    private $chargePaid  = 'MP - Charge paid: ';
    private $chargeOverpaid = 'MP - Charge orverpaid: ';
    private $chargeUnderpaid = 'MP - Charge underpaid: ';
    private $chargeCanceled = 'MP - Charge canceled. ';
    private $chargeRefunded = 'MP - Charge refunded: ';

    public function __call($name, $arguments)
    {
        if (property_exists($this, $name)) {
            return $this->$name;
        }
        return '';
    }
}