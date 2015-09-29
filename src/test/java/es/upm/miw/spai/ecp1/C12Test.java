package es.upm.miw.spai.ecp1;

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
