CC := gcc

APP := deepstream-test5-app

CFLAGS := -std=c99 -Wall -Werror -I/opt/nvidia/deepstream/deepstream-5.0/sources/apps/sample_apps/deepstream-app -I/opt/nvidia/deepstream/deepstream-5.0/sources/includes/ -I/usr/include/gstreamer-1.0 -I/usr/include/glib-2.0 -I/usr/lib/aarch64-linux-gnu/glib-2.0/include -I/opt/nvidia/deepstream/deepstream-5.0/sources/apps/apps-common/includes

LDFLAGS := -L/opt/nvidia/deepstream/deepstream-5.0/lib -L/usr/local/cuda/lib64 -lcudart -Wl,-rpath=/opt/nvidia/deepstream/deepstream-5.0/lib -ldeepstream -lopnvds_meta -lnvdsgst_meta -ldeepracin -lnvds_meta -lnvds_msgbroker

SRCS := deepstream_test5_app_main.c

all: $(APP)

$(APP): $(SRCS)
	$(CC) -o $(APP) $(SRCS) $(CFLAGS) $(LDFLAGS)

clean:
	rm -rf $(APP)

