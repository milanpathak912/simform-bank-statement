<?php

function getFormatedDate($dateVal, $format = '')
{
    $return = $dateVal;
    if ($format) {
        $return = date($format, strtotime($dateVal));
    } else {
        if (strlen($dateVal) > 12) {
            $return = date('d M Y h:i A', strtotime($dateVal));
        } else {
            $return = date('d M Y', strtotime($dateVal));
        }
    }
    return $return;
}

function getFormatedAmount($amountVal, $decimalNumber)
{
    $amountValNew = number_format($amountVal, $decimalNumber, '.', ',');
    return ($amountValNew) ? $amountValNew : $amountVal;
}



