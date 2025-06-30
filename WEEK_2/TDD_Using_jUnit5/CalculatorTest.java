package com.example;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class CalculatorTest {
    
    @Test
    public void testAdd() {
        Calculator calc = new Calculator();
        int result = calc.add(3, 4);
        assertEquals(7, result);
    }

    @Test
    public void testSubstract(){
        Calculator calc=new Calculator();
        int result=calc.substract(12, 9);
        assertEquals(3,result);
    }
    
    @Test
    public void testMultiply() {
        Calculator calc = new Calculator();
        int result = calc.multiply(3, 4);
        assertEquals(12, result);
    }

    @Test
    public void testDivision(){
        Calculator calc=new Calculator();
        int result=calc.divide(12, 4);
        assertEquals(3, result);
    }


}
