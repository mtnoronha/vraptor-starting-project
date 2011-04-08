package br.com.wbotelhos.starting.controller;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;

import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.util.test.MockResult;
import br.com.wbotelhos.starting.component.UserSession;

public class IndexControllerTest {

	private IndexController controller;

	@Mock private UserSession userSession;

	@Spy private Result result = new MockResult();

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		controller = new IndexController(result, userSession);
	}

	@Test
	public void deveriaIndex() throws Exception {
		// given

		// when
		controller.index();

		// then

	}

}