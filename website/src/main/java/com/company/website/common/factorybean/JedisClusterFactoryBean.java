package com.company.website.common.factorybean;


import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.JedisPoolConfig;

import java.util.HashSet;
import java.util.Set;

/**
 * Redis集群工具类
 *
 * @author yangcz@hzzh.com
 * @since 2017-11-20
 */
public class JedisClusterFactoryBean implements FactoryBean<JedisCluster>, InitializingBean {

    private JedisCluster jedisCluster;

    private String redisClusterUris;

    private GenericObjectPoolConfig genericObjectPoolConfig;

    @Override
    public JedisCluster getObject() throws Exception {
        return jedisCluster;
    }

    @Override
    public Class<? extends JedisCluster> getObjectType() {
        return (this.jedisCluster != null ? this.jedisCluster.getClass() : JedisCluster.class);
    }

    @Override
    public boolean isSingleton() {
        return true;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        Set<HostAndPort> nodes = this.parseHostAndPort(redisClusterUris);

        if (genericObjectPoolConfig == null) {
            jedisCluster = new JedisCluster(nodes, new JedisPoolConfig());
        } else {
            jedisCluster = new JedisCluster(nodes, genericObjectPoolConfig);
        }
    }

    private Set<HostAndPort> parseHostAndPort(String redisClusterUris) throws Exception {
        try {
            Set<HostAndPort> nodes = new HashSet<>();
            String[] uriArray = null;
            for (String uri : uriArray) {
                String[] arr = null;
                nodes.add(new HostAndPort(arr[0], Integer.parseInt(arr[1])));
            }
            return nodes;
        } catch (IllegalArgumentException ex) {
            throw ex;
        } catch (Exception ex) {
            throw new Exception("解析 jedis 配置文件失败", ex);
        }
    }

    public void setRedisClusterUris(String redisClusterUris) {
        this.redisClusterUris = redisClusterUris;
    }

    public void setGenericObjectPoolConfig(GenericObjectPoolConfig genericObjectPoolConfig) {
        this.genericObjectPoolConfig = genericObjectPoolConfig;
    }
}
