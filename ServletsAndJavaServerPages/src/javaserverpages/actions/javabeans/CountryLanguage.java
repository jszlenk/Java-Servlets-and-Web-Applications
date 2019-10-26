package javaserverpages.actions.javabeans;

import java.io.Serializable;

public class CountryLanguage implements Serializable {

    private String countryCode;
    private String language;
    private boolean isOfficial;
    private double percentage;

    public CountryLanguage() {
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String value) {
        countryCode = value;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String value) {
        language = value;
    }

    public boolean getIsOfficial() {
        return isOfficial;
    }

    public void setIsOfficial(boolean value) {
        isOfficial = value;
    }

    public double getPercentage() {
        return percentage;
    }

    public void setPercentage(double value) {
        percentage = value;
    }

    public String toString() {
        return String.format("Country Code: %s\t"
                        + "Language: %s\tIs Official: %b\t"
                        + "Percentage: %.1f\n"
                , getCountryCode()
                , getLanguage()
                , getIsOfficial()
                , getPercentage());
    }
}