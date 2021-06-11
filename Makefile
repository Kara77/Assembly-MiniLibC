##
## EPITECH PROJECT, 2017
## ASM
## File description:
## Makefile ASM test
##

NAME			= ./libasm.so

TEST_DIR		= ./tests

ASMFLAGS		= -f elf64

ASM			= nasm

LDFLAGS			= --share

LD			= ld

RM			= rm -rf

SRCS			= files/strlen.S
SRCS			+= files/strchr.S
SRCS			+= files/memset.S
SRCS			+= files/memcpy.S
SRCS			+= files/strcmp.S
SRCS			+= files/memmove.S
SRCS			+= files/strncmp.S
SRCS			+= files/strcasecmp.S
SRCS			+= files/rindex.S
#SRCS			+= files/strstr.S
#SRCS			+= files/strpbrk.S

OBJS			= $(SRCS:.S=.o)

%.o: %.S
	@$(ASM) -o $@ $< $(ASMFLAGS)

all: $(NAME)

$(NAME): $(OBJS)
	$(LD) $(LDFLAGS) -o $(NAME) $(OBJS)

re: fclean all

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

.PHONY: all clean fclean re tests_run
