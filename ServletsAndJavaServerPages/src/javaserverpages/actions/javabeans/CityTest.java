package javaserverpages.actions.javabeans;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CityTest {

    private City city;
    private int id = 10;
    private String name = "Chicago";
    private String countryCode = "USA";
    private String district = "Illinois";
    private int population = 2750000;

    @Before
    public void setUp() throws Exception {
        city = new City();
    }

    @Test
    public void testDefaultConstructor() {
        assertNotNull("Could not create default City", city);
    }

    @Test
    public void testMutatorsAndAccessors() {

        city.setId(id);
        assertEquals("Could not set ID as expected", id, city.getId());

        city.setName(name);
        assertEquals("Could not get name as expected", name, city.getName());

        city.setCountryCode(countryCode);
        assertEquals("Could not set country code as expected", countryCode, city.getCountryCode());

        city.setDistrict(district);
        assertEquals("Could not set district as expected", district, city.getDistrict());

        city.setPopulation(population);
        assertEquals("Could not set population as expected", population, city.getPopulation());
    }

    @Test
    public void testToString() {

    	city.setId(id);
        city.setName(name);
        city.setCountryCode(countryCode);
        city.setDistrict(district);
        city.setPopulation(population);

        String retStr = city.toString();

        assertTrue("To String does not contain expected value for id "
                , retStr.contains(String.format("%d", id)));
        assertTrue("To String does not contain expected value for name "
                , retStr.contains(name));
        assertTrue("To String does not contain expected value for countryCode "
                , retStr.contains(countryCode));
        assertTrue("To String does not contain expected value for district "
                , retStr.contains(district));
        assertTrue("To String does not contain expected value for population "
                , retStr.contains(String.format("%d", population)));
    }
}