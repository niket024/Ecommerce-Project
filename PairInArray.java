/**
 * 
 */

/**
 * @author Niket kumar
 *
 */
public class PairInArray {
	private static final int MAX = 100000; // Max size of Hashmap

	static void printpairs(int arr[], int sum) {
		// Declares and initializes the whole array as false
		boolean[] binmap = new boolean[MAX];
		boolean flag = false;
		for (int i = 0; i < arr.length; ++i) {
			int temp = sum - arr[i];

			// checking for condition
			if (temp >= 0 && binmap[temp]) {
				System.out.println("Pair with given sum " + sum + " is ("
						+ arr[i] + ", " + temp + ")");
				flag = true;
			}
			
			binmap[arr[i]] = true;

		}
		if (!flag)
			System.out.println("no pair with given input");

	}

	public static void main(String[] args) {
		int A[] = { 1, 2, 4, 4 };
		// int A[] = {1, 2, 3, 9} ;
		int n = 8;
		printpairs(A, n);
	}

}
