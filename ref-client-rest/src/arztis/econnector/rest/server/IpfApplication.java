/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "arztis.econnector", "org.openehealth.ipf", "org.husky.communication" })
public class IpfApplication extends SpringBootServletInitializer {

	public static void main(final String[] args) {
		final SpringApplication application = new SpringApplication(IpfApplication.class);
		addApplicationStartupHook(application);
		var context = application.run(args);
		context.close();
	}

	/**
	 * Adds a hook to the Application Ready event to run some magic.
	 *
	 * @param application The IPF {@link SpringApplication} instance.
	 */
	public static void addApplicationStartupHook(final SpringApplication application) {
		application.addListeners((ApplicationListener<ApplicationReadyEvent>) event -> {
			// Do some configuration magic...

		});
	}


}
