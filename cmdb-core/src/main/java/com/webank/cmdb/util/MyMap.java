package com.webank.cmdb.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
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

    public <K> boolean myContainsKey(K key) {
        if(key == null){
            return false;
        }
        Set<K> keySet = (Set<K>) map.keySet();
        for (K k : keySet) {
            if(key.equals(k)) {
                return true;
            }
        }
        return false;
    }
    @Override
    public V remove(Object key) {
        Iterator<K> iterator = map.keySet().iterator();
        while (iterator.hasNext()) {
            K k = iterator.next();
            if (key.equals(k)) {
                iterator.remove();
            }
        }
        return null;
    }

    @Override
    public Set<K> keySet(){
        return map.keySet();
    }
}
