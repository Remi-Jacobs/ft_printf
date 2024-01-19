# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ojacobs <ojacobs@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/05 19:35:59 by ojacobs           #+#    #+#              #
#    Updated: 2024/01/08 16:50:58 by ojacobs          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_putchar.c \
	   ft_putstr.c \
       ft_print_char.c \
	   ft_print_num.c \
	   ft_print_hex.c \
	   ft_print_str.c \
	   ft_print_percent.c \
	   ft_print_unint.c \
	   ft_putaddress.c \
	   ft_printf.c
OBJS            = $(SRCS:%.c=%.o)

CFLAGS          = -Wall -Wextra -Werror
CC              = gcc
$(NAME):        $(OBJS)
				$(CC) $(CFLAGS) -c $(SRCS) -I/
				ar rc $(NAME) $(OBJS)
				
all:            $(NAME)

clean:
				rm -f $(OBJS) 
fclean:         clean
				rm -f $(NAME)
re:             fclean all
.PHONY:         all clean fclean re