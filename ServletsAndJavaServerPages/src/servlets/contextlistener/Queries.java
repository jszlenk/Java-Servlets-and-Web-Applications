package servlets.contextlistener;

public class Queries {

    public static String getCities() {
        return "select * from city where CountryCode = 'PL' order by District ASC, Population DESC";
    }

    static String getCountriesByName() {
        return "select CountryCode, Name, Population from city order by Name";
    }
}