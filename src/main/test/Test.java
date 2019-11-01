import org.junit.runner.RunWith;
import org.redisson.api.RMap;
import org.redisson.api.RedissonClient;
import org.redisson.client.codec.StringCodec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import com.Application;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class,
properties = {
        "spring.redis.redisson.config=classpath:redisson-single.yml"/*,
//        "spring.redis.redisson.config=classpath:redisson-cluster.yml"/*,
        "spring.redis.timeout=10000"*/
    })
public class Test
{
    @Autowired
    private RedissonClient redisson;
    
    @Autowired
    private RedisTemplate<String, String> template;
    
	@org.junit.Test
	public void testApp()
	{
		redisson.getKeys().flushall();

		RMap<String, String> m = redisson.getMap("test1", StringCodec.INSTANCE);
		m.put("1", "12");

		BoundHashOperations<String, String, String> hash = template.boundHashOps("test1");
		String t = hash.get("1");
		System.out.println("[TEST1] <= "+t.equals("12"));
	}
//	@Autowired
//	LoadBalancerClient	loadBalancerClient;
//	@Autowired
//	RestTemplate		restTemplate;
//
//	@org.junit.Test
//	public void todo()
//	{
//		System.out.println("hi");
//		ServiceInstance serviceInstance = loadBalancerClient.choose("eureka-client");
//		String url = "http://" + serviceInstance.getHost() + ":" + serviceInstance.getPort() + "/user/getByUsername";
//		System.out.println(url);
//		System.out.println(restTemplate.getForObject(url, String.class));
//	}
}
