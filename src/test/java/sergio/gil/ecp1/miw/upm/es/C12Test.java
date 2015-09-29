package sergio.gil.ecp1.miw.upm.es;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class C12Test {

	public C12 c;

	@Before
	public void before() {
		c = new C12();
	}

	@Test
	public void testMA() {
		assertEquals("mA", c.mA());
	}

}
