package eLearning.sf.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import static eLearning.sf.security.SecurityConstants.EXPIRATION_TIME;
import static eLearning.sf.security.SecurityConstants.HEADER_STRING;
import static eLearning.sf.security.SecurityConstants.TOKEN_PREFIX;
import static eLearning.sf.security.SecurityConstants.SECRET;

import com.fasterxml.jackson.databind.ObjectMapper;

import eLearning.sf.model.User;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

public class JWTAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

	private AuthenticationManager authenticationManager;
	
	public JWTAuthenticationFilter(AuthenticationManager authenticationManager) {
		this.authenticationManager = authenticationManager;
	}
	
	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
			throws AuthenticationException {
		
		try {
			User creds = new ObjectMapper()
					.readValue(request.getInputStream(), User.class);
			
			return authenticationManager.authenticate(
					new UsernamePasswordAuthenticationToken(
							creds.getUsername(),
							creds.getPassword(),
							new ArrayList<>()
							)
			);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	@Override
	protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain,
			Authentication authResult) throws IOException, ServletException {
		
		UserDetails userDetails = (UserDetails) authResult.getPrincipal();
		String r =  userDetails.getAuthorities().toString();
		String roles =  r.substring(1, r.length() - 1);
		String token = Jwts.builder()
				.setSubject(((org.springframework.security.core.userdetails.User) authResult.getPrincipal()).getUsername())
				.claim("roles", roles)
				.setExpiration(new Date(System.currentTimeMillis() + EXPIRATION_TIME))
				.signWith(SignatureAlgorithm.HS512, SECRET.getBytes())
				.compact();
		
		response.addHeader(HEADER_STRING, TOKEN_PREFIX + token);
	}
	
}
