JINPUT_VERSION = 2.0.10
JLAYER_VERSION = 1.0.1-gdx
JNIGEN_VERSION = 2.5.2
LIBGDX_VERSION = 1.14.2
LWJGL_VERSION = 3.4.1
MAVEN_CENTRAL = https://repo1.maven.org/maven2

GDX_JAR = jars/gdx-$(LIBGDX_VERSION).jar
GDX_BACKEND_JAR = jars/gdx-backend-lwjgl3-$(LIBGDX_VERSION).jar
GDX_FREETYPE_JAR = jars/gdx-freetype-$(LIBGDX_VERSION).jar
GDX_FREETYPE_NATIVES_JAR = jars/gdx-freetype-platform-$(LIBGDX_VERSION)-natives-desktop.jar
GDX_PLATFORM_NATIVES_JAR = jars/gdx-platform-$(LIBGDX_VERSION)-natives-desktop.jar
JNIGEN_JAR = jars/gdx-jnigen-loader-$(JNIGEN_VERSION).jar
LWJGL_JAR = jars/lwjgl-$(LWJGL_VERSION).jar
LWJGL_GLFW_JAR = jars/lwjgl-glfw-$(LWJGL_VERSION).jar
LWJGL_OPENAL_JAR = jars/lwjgl-openal-$(LWJGL_VERSION).jar
LWJGL_OPENGL_JAR = jars/lwjgl-opengl-$(LWJGL_VERSION).jar
LWJGL_JEMALLOC_JAR = jars/lwjgl-jemalloc-$(LWJGL_VERSION).jar
LWJGL_STB_JAR = jars/lwjgl-stb-$(LWJGL_VERSION).jar
JLAYER_JAR = jars/jlayer-$(JLAYER_VERSION).jar
JORBIS_JAR = jars/jorbis-0.0.17.jar
JINPUT_JAR = jars/jinput-$(JINPUT_VERSION).jar
JINPUT_NATIVES_JAR = jars/jinput-$(JINPUT_VERSION)-natives-all.jar
SDL2GDX_JAR = jars/sdl2gdx-1.0.5.jar
LWJGL_NATIVES_JAR = jars/lwjgl-$(LWJGL_VERSION)-natives-linux.jar
LWJGL_GLFW_NATIVES_JAR = jars/lwjgl-glfw-$(LWJGL_VERSION)-natives-linux.jar
LWJGL_OPENAL_NATIVES_JAR = jars/lwjgl-openal-$(LWJGL_VERSION)-natives-linux.jar
LWJGL_OPENGL_NATIVES_JAR = jars/lwjgl-opengl-$(LWJGL_VERSION)-natives-linux.jar
LWJGL_JEMALLOC_NATIVES_JAR = jars/lwjgl-jemalloc-$(LWJGL_VERSION)-natives-linux.jar
LWJGL_STB_NATIVES_JAR = jars/lwjgl-stb-$(LWJGL_VERSION)-natives-linux.jar

.PHONY: all-jars

all-jars: $(GDX_JAR) $(GDX_BACKEND_JAR) $(GDX_FREETYPE_JAR) $(GDX_FREETYPE_NATIVES_JAR) $(GDX_PLATFORM_NATIVES_JAR) $(JNIGEN_JAR) $(LWJGL_JAR) $(LWJGL_GLFW_JAR) $(LWJGL_OPENAL_JAR) $(LWJGL_OPENGL_JAR) $(LWJGL_JEMALLOC_JAR) $(LWJGL_STB_JAR) $(JINPUT_JAR) $(JINPUT_NATIVES_JAR) $(JLAYER_JAR) $(JORBIS_JAR) $(LWJGL_NATIVES_JAR) $(LWJGL_GLFW_NATIVES_JAR) $(LWJGL_OPENAL_NATIVES_JAR) $(LWJGL_OPENGL_NATIVES_JAR) $(LWJGL_JEMALLOC_NATIVES_JAR) $(LWJGL_STB_NATIVES_JAR)

check: all-jars
	keen check .

jars:
	mkdir -p jars
clean:
	rm -rf jars

$(GDX_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/com/badlogicgames/gdx/gdx/$(LIBGDX_VERSION)/gdx-$(LIBGDX_VERSION).jar

$(GDX_BACKEND_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/com/badlogicgames/gdx/gdx-backend-lwjgl3/$(LIBGDX_VERSION)/gdx-backend-lwjgl3-$(LIBGDX_VERSION).jar

$(GDX_FREETYPE_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/com/badlogicgames/gdx/gdx-freetype/$(LIBGDX_VERSION)/gdx-freetype-$(LIBGDX_VERSION).jar

$(GDX_FREETYPE_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/com/badlogicgames/gdx/gdx-freetype-platform/$(LIBGDX_VERSION)/gdx-freetype-platform-$(LIBGDX_VERSION)-natives-desktop.jar

$(GDX_PLATFORM_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/com/badlogicgames/gdx/gdx-platform/$(LIBGDX_VERSION)/gdx-platform-$(LIBGDX_VERSION)-natives-desktop.jar

$(JNIGEN_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/com/badlogicgames/gdx/gdx-jnigen-loader/$(JNIGEN_VERSION)/gdx-jnigen-loader-$(JNIGEN_VERSION).jar

$(LWJGL_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl/$(LWJGL_VERSION)/lwjgl-$(LWJGL_VERSION).jar

$(LWJGL_GLFW_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-glfw/$(LWJGL_VERSION)/lwjgl-glfw-$(LWJGL_VERSION).jar

$(LWJGL_OPENAL_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-openal/$(LWJGL_VERSION)/lwjgl-openal-$(LWJGL_VERSION).jar

$(LWJGL_OPENGL_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-opengl/$(LWJGL_VERSION)/lwjgl-opengl-$(LWJGL_VERSION).jar

$(LWJGL_JEMALLOC_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-jemalloc/$(LWJGL_VERSION)/lwjgl-jemalloc-$(LWJGL_VERSION).jar

$(LWJGL_STB_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-stb/$(LWJGL_VERSION)/lwjgl-stb-$(LWJGL_VERSION).jar

$(JINPUT_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/net/java/jinput/jinput/$(JINPUT_VERSION)/jinput-$(JINPUT_VERSION).jar
$(JINPUT_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/net/java/jinput/jinput/$(JINPUT_VERSION)/jinput-$(JINPUT_VERSION)-natives-all.jar
	mkdir -p jars/natives
	cd jars/natives && jar xf ../jinput-$(JINPUT_VERSION)-natives-all.jar

$(JLAYER_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/com/badlogicgames/jlayer/jlayer/$(JLAYER_VERSION)/jlayer-$(JLAYER_VERSION).jar

$(JORBIS_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/jcraft/jorbis/0.0.17/jorbis-0.0.17.jar

$(LWJGL_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl/$(LWJGL_VERSION)/lwjgl-$(LWJGL_VERSION)-natives-linux.jar

$(LWJGL_GLFW_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-glfw/$(LWJGL_VERSION)/lwjgl-glfw-$(LWJGL_VERSION)-natives-linux.jar

$(LWJGL_OPENAL_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-openal/$(LWJGL_VERSION)/lwjgl-openal-$(LWJGL_VERSION)-natives-linux.jar

$(LWJGL_OPENGL_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-opengl/$(LWJGL_VERSION)/lwjgl-opengl-$(LWJGL_VERSION)-natives-linux.jar

$(LWJGL_JEMALLOC_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-jemalloc/$(LWJGL_VERSION)/lwjgl-jemalloc-$(LWJGL_VERSION)-natives-linux.jar

$(LWJGL_STB_NATIVES_JAR): | jars
	curl -sfL --output-dir jars -O $(MAVEN_CENTRAL)/org/lwjgl/lwjgl-stb/$(LWJGL_VERSION)/lwjgl-stb-$(LWJGL_VERSION)-natives-linux.jar
