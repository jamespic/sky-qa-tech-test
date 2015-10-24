<?php

class ScientificCalculator extends Calculator implements iScientificCalculator {

    protected $stack;
    protected $op;
    protected $result;

    public function cubeRoot($a) {
        if ($a < 0)
            return -pow(-$a, 1/3);
        else
            return pow($a, 1/3);
    }
    
    public function factorial($a) {
        $a = intval($a);
        if ($a < 0)
            throw new Exception("Factorial must be positive");
        if ($a <= 1)
            return 1;
        else
            return $a * $this->factorial($a -1);
    }
    
    public function decToHex($a) {
        return dechex($a);
    }

    public function pressCubeRoot() {
        $current_value = array_pop($this->stack);
        $new_value= $this->cubeRoot($current_value);
        array_push($this->stack, $new_value);
    }
    
    public function pressFactorial() {
        $current_value = array_pop($this->stack);
        $new_value= $this->factorial($current_value);
        array_push($this->stack, $new_value);
    }
    
    public function pressDecToHex() {
        $current_value = array_pop($this->stack);
        $new_value= $this->decToHex($current_value);
        array_push($this->stack, $new_value);
    }
}
