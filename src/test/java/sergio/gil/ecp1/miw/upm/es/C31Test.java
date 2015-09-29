package sergio.gil.ecp1.miw.upm.es;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;


public class C31Test {
	
	public C31 c;
	
	@Before
    public void before() {
        c = new C31();
    }

	@Test
	public void testM1() {
		assertEquals("m1", c.m1());
	}

	@Test
	public void testM2() {
		assertEquals("m2", c.m2());
	}

}
