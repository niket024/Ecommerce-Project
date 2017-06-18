package realtimeexample;

import java.util.Arrays;
import java.util.Scanner;

public class StudentsMarks
{
	static Scanner sc = new Scanner(System.in);
	static int marks[] = null;

	public static void main(String[] args)
	{
		String choice = "";
		do
		{
			System.out.println("enter the no of subjects");
			int no = sc.nextInt();
			marks = new int[no];
			System.out.println("enter the student name");
			String name = sc.next();
			for (int i = 0; i < no; i++)
			{
				System.out.println("enter the marks of subjects " + (i + 1));
				marks[i] = sc.nextInt();
			}
			int totalMarks = getTotalMarks(marks);
			double avg = getAvgMarks(totalMarks, no);
			boolean status = getStatus(avg);
			String statustext = "";
			if (status)
			{
				statustext = "pass";
			} else
			{
				statustext = "fail";

			}
			System.out.println("*****Mark sheet******");
			System.out.println("Name:" + name);
			System.out.println("total marks:" + totalMarks);
			System.out.println("Avg marks:" + avg);
			System.out.println("Marks obtained:" + Arrays.toString(marks));
			System.out.println("Status:" + statustext);
			System.out.println("Do you want again?(Y/N)");
			choice = sc.next();
		} while (choice.equalsIgnoreCase("y"));
		System.out.println("Thanks!!!!!");
	}

	private static boolean getStatus(double avg)
	{
		boolean status = false;
		if (avg >= 60)
		{
			status = true;
		}
		return status;
	}

	private static double getAvgMarks(int totalMarks, int no)
	{

		return totalMarks / no;
	}

	private static int getTotalMarks(int[] marks2)
	{
		int total = 0;
		for (int mark : marks2)
		{
			total = total + mark;
		}
		return total;
	}
}
