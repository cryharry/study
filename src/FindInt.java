
public class FindInt {
	public static boolean find(int[] data, int target) {
		for(int i=0; i<data.length; i++) {
			if(data[i] == target) {
				return true;
			}
		}
		return false;
	}
	public static void main(String[] args) {
		int[] data = {1, 9, 0, 2, 8, 5, 6, 3, 4, 7};
		if(FindInt.find(data, 7)) {
			System.out.println("Found!");
		} else {
			System.out.println("Not Found....");
		}
	}
}
