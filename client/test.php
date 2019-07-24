<?php

use PHPUnit\Framework\TestCase;

require "./config.php";
require "./functions.php";

class PhpUnitTest extends TestCase
{
    public function testDusite()
    {
        $this->expectOutputString(config('version'));
        $result =  siteVersion();
    }
    public function testNom()
    {
        $this->expectOutputString(config('name'));
        $result = siteName();
    }
    public function testPHP() 
    {
        $this->assertContains(config('php_version'), phpversion());
    }
}