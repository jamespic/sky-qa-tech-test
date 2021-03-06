<?php

use Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

set_include_path(get_include_path() . PATH_SEPARATOR . "../../lib");

require_once("iCalculator.php");
require_once("iScientificCalculator.php");
require_once("Calculator.php");
require_once("ScientificCalculator.php");

class FeatureContext extends BehatContext {
    protected $calculator;

    public function __construct() {
        $this->calculator = new ScientificCalculator();
    }

    /**
     * @Given /^I enter "(-?\d+\.?\d*)" into the calculator$/
     */
    public function iEnterIntoTheCalculator($argument1) {
        $this->calculator->pressNumber($argument1);
    }

    /**
     * @Given /^I hit "([^"]*)"$/
     */
    public function iHitButton($btn) {
        $reflector = new ReflectionClass($this->calculator);
        $methodName = "press" . str_replace(" ", "", ucwords($btn));
        $method = $reflector->getMethod($methodName);
        $method->invoke($this->calculator);
    }

    /**
     * @Then /^I see a result of "([^"]*)"$/
     */
    public function iSeeAResultOf($argument1) {
        $result = $this->calculator->readScreen();
        if($result != $argument1) {
            throw new Exception("Wrong result, actual is [$result]");
        }
    }
    
    /**
     * @Then /^I see a result of "Infinity"$/
     */
    public function iSeeAResultOfInfinity() {
        $result = $this->calculator->readScreen();
        if(!is_infinite($result)) {
            throw new Exception("Wrong result, expected infinite, actual is [$result]");
        }
    }
}
