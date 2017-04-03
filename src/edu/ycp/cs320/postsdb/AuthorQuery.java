package edu.ycp.cs320.postsdb;

import java.util.List;
import java.util.Scanner;

import edu.ycp.cs320.postsdb.model.Author;
import edu.ycp.cs320.postsdb.model.Book;
import edu.ycp.cs320.postsdb.model.Pair;
import edu.ycp.cs320.postsdb.persist.DatabaseProvider;
import edu.ycp.cs320.postsdb.persist.IDatabase;

//TODO: copy class file, modify to insert
public class AuthorQuery {
	public static void main(String[] args) throws Exception {
		Scanner keyboard = new Scanner(System.in);

		// Create the default IDatabase instance
		InitDatabase.init(keyboard);
		
		System.out.print("Enter an author's last name: ");
		String lastname = keyboard.nextLine();
		
		// get the DB instance and execute transaction
		IDatabase db = DatabaseProvider.getInstance();
		List<Pair<Author, Book>> authorBookList = db.findAuthorAndBookByAuthorLastName(lastname);
		
		// check if anything was returned and output the list
		if (authorBookList.isEmpty()) {
			System.out.println("No books found with author lastname <" + lastname + ">");
		}
		else {
			for (Pair<Author, Book> authorBook : authorBookList) {
				Author author = authorBook.getLeft();
				Book book = authorBook.getRight();
				System.out.println(author.getLastname() + "," + author.getFirstname() + "," + book.getTitle() + "," + book.getIsbn() + "," + book.getPublished());
			}
		}
	}
}
