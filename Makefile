# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: badrien <badrien@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/23 14:08:50 by badrien           #+#    #+#              #
#    Updated: 2021/02/19 14:20:27 by badrien          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_read.s ft_write.s ft_strdup.s

OBJS = ${SRCS:.s=.o}

NAME = libasm.a

ASM = nasm

#FLAG = -f macho64 #MacOs

FLAG = -f elf64 #linux

LIB = ar -rcs

RM = rm -rf

CFLAGS = -Wall -Wextra -Werror

all:	${NAME}

${NAME}:	${OBJS}
			${LIB} ${NAME} ${OBJS}

clean:
			${RM} ${OBJS} main.o

fclean: 	clean
			${RM} ${NAME} test
			
re: fclean all

test:	re
		gcc main.c -c
		gcc -Wall -Werror -Wextra -L. -o test main.o libasm.a
		./test

#test:	${NAME} #MacOs
#		gcc -Wall -Werror -Wextra -L. -lasm -o test main.c

%.o: %.s
	${ASM} ${FLAG} $< -o $@