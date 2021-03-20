# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: psnapp <psnapp@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/18 20:18:10 by psnapp            #+#    #+#              #
#    Updated: 2021/02/18 20:33:12 by psnapp           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all re fclean clean

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

SRCO = $(SRC:.s=.o)

HEADER = libasm.h

all: $(NAME)

$(NAME): $(SRCO) $(HEADER)
	ar rcs $(NAME) $(SRCO)

%.o:%.s $(HEADER)
	nasm -fmacho64 $<

clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all

run: $(NAME)
		gcc main.c $(NAME)