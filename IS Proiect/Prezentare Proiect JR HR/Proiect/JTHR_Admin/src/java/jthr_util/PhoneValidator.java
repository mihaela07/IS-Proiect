package jthr_util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Alex Cozma
 */
public class PhoneValidator {
    
    Pattern pattern;
    Matcher matcher;
    private static final String regex = "[0-9]+";
    

    public PhoneValidator()
    {
        this.pattern = Pattern.compile(regex);
    }
    
    public boolean validate(final String hex) 
    {
	matcher = pattern.matcher(hex);
	return matcher.matches();
    }
}
