FROM jbangdev/jbang-action
COPY demo.java .

RUN jbang build --verbose demo.java
RUN cat /jbang/.jbang/cache/dependency_cache.json

RUN jbang demo.java
RUN cat /jbang/.jbang/cache/dependency_cache.json

RUN jbang demo.java
RUN cat /jbang/.jbang/cache/dependency_cache.json
