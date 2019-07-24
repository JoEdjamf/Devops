<?php

use PHPUnit\Framework\TestCase;

require "./config.php";
require "./functions.php";

class PhpUnitTest extends TestCase
{
    public function test()
    {
        $this->expectOutputString(config('version'));
        $result =  siteVersion();
    }
    public function testNom()
    {
        $this->expectOutputString(config('name'));
        $result = siteName();
    }
}