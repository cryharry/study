package refactoring.extract.method;

class InvalidInputException extends Exception {
	InvalidInputException() {
		super();
	}
	InvalidInputException(String message) {
		super(message);
	}
}

public class UserRequest {
	private String hostname = null;
	private String username = null;
	private static final int REQ = 3;
	public void processUserRequest() throws InvalidInputException {
		String hostname = getStringWithPrompt("Host");
		String username = getStringWithPrompt("User");
		postRequest(hostname, username);
	}
	private String getStringWithPrompt(String str) throws InvalidInputException {
		for( int i=0; i<REQ; i++) {
			showPrompt(str);
			String input = getString(str);
			if(input != null) {
				return input;
			}
		}
		return null;
	}
	private String getString(String str) {
		if( str.equals("Host")) return hostname = new String("New Host");
		else return username = new String("New User");
	}
	private void showPrompt(String str) {
		System.out.println(str + " : ");
	}
	private void postRequest(String hostname, String username) {
		System.out.println();
	}
	public static void main(String[] args) {
		UserRequest req = new UserRequest();
	}
}
