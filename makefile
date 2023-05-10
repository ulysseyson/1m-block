LDLIBS=-lnetfilter_queue

all: 1m-block


1m-block: main.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@
main.o: main.cpp

clean:
	rm -f 1m-block *.o