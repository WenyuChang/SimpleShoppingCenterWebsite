package intercept;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class importNotise implements Interceptor {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void init() {

	}

	public void destroy() {

	}

	public String intercept(ActionInvocation actionInvocation) throws Exception {
		System.out.println("user try to login...");
		String result = actionInvocation.invoke();
		return result;
	}
}
