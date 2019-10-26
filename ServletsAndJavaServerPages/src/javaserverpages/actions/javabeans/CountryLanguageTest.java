package javaserverpages.actions.javabeans;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CountryLanguageTest {

    private CountryLanguage countryLanguage;
    private String countryCode = "USA";
    private String language = "ENGLISH";
    private boolean isOfficial = true;
    private double percentage = 87.9;
    private double delta = 0.00001;

    @Before
    public void setUp() throws Exception {
        countryLanguage = new CountryLanguage();
    }

    @Test
    public void testDefaultConstructor() {
        assertNotNull("Could not create a new CountryLanguage", countryLanguage);
    }

    @Test
    public void testMutatorsAndAccessors() {

        countryLanguage.setCountryCode(countryCode);
        assertEquals("Could not set country code as expected", countryCode, countryLanguage.getCountryCode());
        countryLanguage.setIsOfficial(isOfficial);
        assertEquals("Could not set isOfficial as expected", isOfficial, countryLanguage.getIsOfficial());
        countryLanguage.setPercentage(percentage);
        assertEquals("Could not set percentage as expected", percentage, countryLanguage.getPercentage(), delta);
        countryLanguage.setLanguage(language);
        assertEquals("Could not set language as expected", language, countryLanguage.getLanguage());
    }

    @Test
    public void testToString() {

        countryLanguage.setCountryCode(countryCode);
        countryLanguage.setIsOfficial(isOfficial);
        countryLanguage.setPercentage(percentage);
        countryLanguage.setLanguage(language);

        String retStr = countryLanguage.toString();
        assertTrue("To String does not contain expected value for countryCode ", retStr.contains(countryCode));
        assertTrue("To String does not contain expected value for isOfficial ", retStr.contains(String.format("%b", isOfficial)));
        assertTrue("To String does not contain expected value for percentage ", retStr.contains(String.format("%.1f", percentage)));
        assertTrue("To String does not contain expected value for language ", retStr.contains(language));
    }
}