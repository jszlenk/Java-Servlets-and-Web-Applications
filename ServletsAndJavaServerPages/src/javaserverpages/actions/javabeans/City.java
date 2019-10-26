package javaserverpages.actions.javabeans;

import java.io.Serializable;

public class City implements Serializable {

    private int id;
    private String name;
    private String countryCode;
    private String district;
    private int population;

    public City() {
    }

    public int getId() {
        return id;
    }

    public void setId(int value) {
        id = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String value) {
        name = value;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String value) {
        countryCode = value;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String value) {
        district = value;
    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int value) {
        population = value;
    }

    public String toString() {
        return String.format("Id: %d\tName: %s\tCountry Code: %s\tDistrict: %s\tPopulation: %d\n"
                , getId()
                , getName()
                , getCountryCode()
                , getDistrict()
                , getPopulation());
    }
}