package btm.util;

import java.security.SecureRandom;
import java.util.stream.Collectors;

public class PasswordUtil {

    public static String generateRandomPassword(int length, int randNumOrigin, int randNumBound)
    {
        SecureRandom random = new SecureRandom();
        return random.ints(randNumOrigin, randNumBound + 1)
                .filter(i -> Character.isLetter(i) || Character.isDigit(i))
                .limit(length)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint,
                        StringBuilder::append)
                .toString();
    }

}
