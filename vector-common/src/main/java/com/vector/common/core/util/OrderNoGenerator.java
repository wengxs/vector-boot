package com.vector.common.core.util;

public interface OrderNoGenerator {

    String generate(String prefix);

    String generate(String prefix, int suffixLength);
}
