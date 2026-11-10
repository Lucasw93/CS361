import java.util.Arrays;

public class ParserDemo {

	public static void main(String[] args) {
		TokenStream tStream = new TokenStream(Arrays.stream(args).findFirst()
				.map(prog -> "Jay/test/" + prog)
				.orElse("Jay/test/parser-demo.jay"));

		ConcreteSyntax cSyntax = new ConcreteSyntax(tStream);
		Program p = cSyntax.program();
		System.out.println(p.display());
		System.out.println("test");

	}

}