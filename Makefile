# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: badrien <badrien@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/23 14:08:50 by badrien           #+#    #+#              #
#    Updated: 2020/10/23 14:15:35 by badrien          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	

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

%.o: %.s
	${ASM} ${FLAG} $<