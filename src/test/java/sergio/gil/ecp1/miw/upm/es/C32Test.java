package sergio.gil.ecp1.miw.upm.es;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;


public class C32Test {
	
	public C32 c;
	
	@Before
    public void before() {
        c = new C32();
    }

	@Test
	public void testMA() {
		assertEquals("mA", c.mA());
	}

	

}
