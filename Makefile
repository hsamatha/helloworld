NAME = helloworld

LIBNAME = helloworld.a

SRC =	helloworld.c

OBJ = $(patsubst %.c,%.o,$(SRC))

CC = gcc

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)
	$(RM) $(OBJ)

%.o:%.c
	$(CC) -c $< -o $@

# clean:
# 		$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(LIBNAME)

re: fclean all

.PHONY: all, clean, fclean, re

hello:
	@echo "Hello World! shortcut"


# CC = gcc

# helloworld: helloworld.c
# 	$(CC) -o '$@' '$<'

# .PHONY: clean

# clean:
# 	rm -f hello