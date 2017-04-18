%.o : %.c
	$(CC) -c $(CFLAGS) $(INCS) -o $@ $<

%.o : %.cpp
	$(CXX) -std=c++11 -c $(CXXFLAGS) $(INCS) -o $@ $<

%.o : %.s
	$(AS) -c $(ASFLAGS) $(INCS) -o $@ $<

%.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $?

$(PROJ): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS) $(LIBDIRS) $(LIBS) $(LDFLAGS)


$(PROJ).a: $(OBJS)

-include $(OBJS:.o=.d)


.PHONY: clean
clean:
	$(RM) $(OBJS) $(OBJS:%.o=%.d) $(OBJS:.o=.lst)
	$(RM) $(PROJ)
