package servlets.sessionlistener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.concurrent.atomic.AtomicInteger;

@WebListener
public class SessionTracking implements HttpSessionListener {

    private static final AtomicInteger activeUsers = new AtomicInteger();

    public void sessionCreated(HttpSessionEvent hse) {
        System.out.println("A new Session was created");
        activeUsers.incrementAndGet();
    }

    public void sessionDestroyed(HttpSessionEvent hse) {
        System.out.println("An existing Session was destroyed");
        activeUsers.decrementAndGet();
    }

    static int getActiveUserCount() {
        return activeUsers.get();
    }
}