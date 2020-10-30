# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: badrien <badrien@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/23 14:08:50 by badrien           #+#    #+#              #
#    Updated: 2020/10/30 14:40:57 by badrien          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_strlen.s ft_strcpy.s

OBJS = ${SRCS:.s=.o}

NAME = libasm.a

ASM = nasm

FLAG = -f macho64

LIB = ar rc

RM = rm -rf

CFLAGS = -Wall -Wextra -Werror #-fsanitize=address

all:	${NAME}

${NAME}:	${OBJS}
			${LIB} ${NAME} ${OBJS}

clean:
			${RM} ${OBJS}

fclean: 	clean
			${RM} ${NAME}

re: fclean all

test:	${NAME}
		gcc -Wall -Werror -Wextra -L. -lasm -o test main.c

%.o: %.s
	${ASM} ${FLAG} $<
