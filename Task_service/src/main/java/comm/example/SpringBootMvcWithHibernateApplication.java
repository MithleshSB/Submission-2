package comm.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class SpringBootMvcWithHibernateApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootMvcWithHibernateApplication.class, args);
    }

}
