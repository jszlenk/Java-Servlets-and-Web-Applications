package javaserverpages.actions.javabeans;

import static org.junit.Assert.*;

import org.junit.Test;

public class CountryTest {

    private Country country;
    private String code = "USA";
    private String name = "United States of America";
    private String continent = "North America";
    private String region = "Middle";
    private double surfaceArea = 123456.7;
    private int indepYear = 1776;
    private int population = 350000000;
    private double lifeExpectancy = 73;
    private double gnp = 15000000000000.0;
    private double gnpOld = 14000000000000.0;
    private String localName = "USA";
    private String governmentForm = "Democracy";
    private String headOfState = "Obama";
    private String capital = "Washington, D. C.";
    private String code2 = "123151515";
    private double delta = 0.00001;

    @Test
    public void testDefaultConstructor() {
        country = new Country();
        assertNotNull("Could not create Country", country);
    }

    @Test
    public void testMutatorsAndAccessors() {

        country = new Country();
        country.setCode(code);
        assertEquals("Could not set code as expected", code, country.getCode());
        country.setName(name);
        assertEquals("Could not set name as expected", name, country.getName());
        country.setContinent(continent);
        assertEquals("Could not set continent as expected", continent, country.getContinent());
        country.setRegion(region);
        assertEquals("Could not set region as expected", region, country.getRegion());
        country.setSurfaceArea(surfaceArea);
        assertEquals("Could not set surfaceArea as expected", surfaceArea, country.getSurfaceArea(), delta);
        country.setIndepYear(indepYear);
        assertEquals("Could not set indep year as expected", indepYear, country.getIndepYear());
        country.setPopulation(population);
        assertEquals("Could not set population as expected", population, country.getPopulation());
        country.setLifeExpectancy(lifeExpectancy);
        assertEquals("Could not set life as expected", lifeExpectancy, country.getLifeExpectancy(), delta);
        country.setGnp(gnp);
        assertEquals("Could not set gnp as expected", gnp, country.getGnp(), delta);
        country.setGnpOld(gnpOld);
        assertEquals("Could not set gnp old as expected", gnpOld, country.getGnpOld(), delta);
        country.setLocalName(localName);
        assertEquals("Could not set local name as expected", localName, country.getLocalName());
        country.setGovernmentForm(governmentForm);
        assertEquals("Could not set government as expected", governmentForm, country.getGovernmentForm());
        country.setHeadOfState(headOfState);
        assertEquals("Could not set head of state as expected", headOfState, country.getHeadOfState());
        country.setCapital(capital);
        assertEquals("Could not set capital as expected", capital, country.getCapital());
        country.setCode2(code2);
        assertEquals("Could not set code2 as expected", code2, country.getCode2());
    }

    @Test
    public void testToString() {

        country = new Country();
        country.setCode(code);
        country.setName(name);
        country.setContinent(continent);
        country.setRegion(region);
        country.setSurfaceArea(surfaceArea);
        country.setIndepYear(indepYear);
        country.setPopulation(population);
        country.setLifeExpectancy(lifeExpectancy);
        country.setGnp(gnp);
        country.setGnpOld(gnpOld);
        country.setLocalName(localName);
        country.setGovernmentForm(governmentForm);
        country.setHeadOfState(headOfState);
        country.setCapital(capital);
        country.setCode2(code2);


        String retStr = country.toString();
        assertTrue("To String does not contain expected value for Code", retStr.contains(code));
        assertTrue("To String does not contain expected value for Name", retStr.contains(name));
        assertTrue("To String does not contain expected value for region", retStr.contains(region));
        assertTrue("To String does not contain expected value for surface area", retStr.contains(String.format("%.1f", surfaceArea)));
        assertTrue("To String does not contain expected value for indepYear", retStr.contains(String.format("%d", indepYear)));
        assertTrue("To String does not contain expected value for population", retStr.contains(String.format("%d", population)));
        assertTrue("To String does not contain expected value for lifeExpectancy", retStr.contains(String.format("%.1f", lifeExpectancy)));
        assertTrue("To String does not contain expected value for gnp", retStr.contains(String.format("%.1f", gnp)));
        assertTrue("To String does not contain expected value for gnpOld", retStr.contains(String.format("%.1f", gnpOld)));
        assertTrue("To String does not contain expected value for localName", retStr.contains(localName));
        assertTrue("To String does not contain expected value for governmentForm", retStr.contains(governmentForm));
        assertTrue("To String does not contain expected value for headOfState", retStr.contains(headOfState));
        assertTrue("To String does not contain expected value for capital", retStr.contains(capital));
        assertTrue("To String does not contain expected value for Code2", retStr.contains(code2));
    }
}