##
## EPITECH PROJECT, 2023
## libmeta
## File description:
## Makefile
##

CC ?= gcc

AR ?= ar

RM = rm

SRC 	=	.hidden/easter_egg.c			\

NAME = libmeta.a

VPATH = ./headers

CPPFLAGS = -iquote $(VPATH) -Wall -Wextra

OBJ	= $(SRC:.c=.o)

all:	$(NAME)

$(NAME): $(OBJ)
	$(MAKE) -C modules/meta_libc
	$(MAKE) -C modules/meta_links
	$(MAKE) -C modules/meta_ranks
	$(MAKE) -C modules/meta_csfml
	$(AR) -rcs $(NAME) $(OBJ)

clean:
	$(RM) -f $(OBJ)

fclean: clean
	$(RM) -f $(NAME)

re: fclean all

debug: CFLAGS += -g3
debug: re

.PHONY: all clean fclean re debug \
