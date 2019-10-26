package javaserverpages.actions.javabeans;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class WebUserTest {

    private WebUser webUser;
    private String uid = "authorized user";
    private String pwd = "1234";
    private int authLevel = 19;

    @Before
    public void setUp() throws Exception {
        webUser = new WebUser();
        webUser.setUserId(uid);
        webUser.setPassword(pwd);
        webUser.setAuthLevel(authLevel);
    }

    @Test
    public void testConstructor() {
        assertNotNull("Default constructor not working for WebUser", webUser);
    }

    @Test
    public void testMutatorsAndAccessors() {
        assertEquals("Value not set correctly for uid", uid, webUser.getUserId());
        assertEquals("Value not set correctly for pwd", pwd, webUser.getPassword());
        assertEquals("Value not set correctly for auth Level", authLevel, webUser.getAuthLevel());
    }

    @Test
    public void testToString() {
        String retStr = webUser.toString();
        assertTrue("To String does not contain uid", retStr.contains(uid));
        assertTrue("To String does not contain pwd", retStr.contains(pwd));
        assertTrue("To String does not contain authLevel", retStr.contains(String.format("%d", authLevel)));
    }
}