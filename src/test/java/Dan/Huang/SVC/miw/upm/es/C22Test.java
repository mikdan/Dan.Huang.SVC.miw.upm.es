package Dan.Huang.SVC.miw.upm.es;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class C22Test {
	private C22 c22;
	@Before
	public void before() {
		c22 = new C22();
	}
	@Test
	public void testMA() {
		assertEquals("mA", c22.mA());
	}
}
