package com.pucl.exchange.config;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * Created by yangqj on 2017/4/30.
 */
@Configuration
@EnableCaching
public class RedisConfig extends CachingConfigurerSupport {
    @Value("${spring.redis.host}")
    private String host;

    @Value("${spring.redis.port}")
    private int port;

    @Value("${spring.redis.timeout}")
    private int timeout;

    @Value("${spring.redis.pool.max-idle}")
    private int maxIdle;

    @Value("${spring.redis.pool.max-wait}")
    private long maxWaitMillis;

    @Value("${spring.redis.password}")
    private String password;

    @Bean
    public static JedisPool redisPoolFactory(RedisConfig redisConfig) {
        Logger.getLogger(redisConfig.getClass()).info("JedisPool注入成功！！");
        Logger.getLogger(redisConfig.getClass()).info("redis地址：" + redisConfig.host + ":" + redisConfig.port);
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        jedisPoolConfig.setMaxIdle(redisConfig.maxIdle);
        jedisPoolConfig.setMaxWaitMillis(redisConfig.maxWaitMillis);

        JedisPool jedisPool = new JedisPool(jedisPoolConfig, redisConfig.host, redisConfig.port, redisConfig.timeout, redisConfig.password);

        return jedisPool;
    }

}
