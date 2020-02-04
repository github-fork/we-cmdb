package com.webank.cmdb.util;

import java.util.HashMap;
import java.util.Set;

/**
 * @auther: $
 * @date: $ $
 */
public class MyMap<K,V> extends HashMap<K, V> {
    private static final long serialVersionUID = 1L;
    private HashMap<K, V> map;

    public MyMap() {
        map = new HashMap<K, V>();
    }

    @Override
    public V put(K key, V value) {
        if(key == null){
            return null;
        }
        if(!containsKey(key)) {
            map.put(key, value);
        }
        return value;
    }
    @Override
    public V get(Object key) {
        return map.get(key);
    }
    @Override
    public boolean containsKey(Object key) {
        if(key == null){
            return false;
        }
        Set<K> keySet = map.keySet();
        for (K k : keySet) {
            if(key.equals(k)) {
                return true;
            }
        }
        return false;
    }
    @Override
    public V remove(Object key) {
        Set<K> keySet = map.keySet();
        for (K k : keySet) {
            if(key.equals(k)) {
                map.remove(k);
            }
        }
        return null;
    }
}
