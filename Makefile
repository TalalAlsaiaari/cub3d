# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: talsaiaa <talsaiaa@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/06 00:30:54 by talsaiaa          #+#    #+#              #
#    Updated: 2023/03/06 01:27:15 by talsaiaa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	cub3d

SRCS	=	test.c

OBJS	=	$(SRCS:.c=.o)

LIBFT	=	cd Libft && make

MLX		=	cd mlx && make

LIB		=	Libft/libft.a

INCLUDE	=	-I mlx

LINKS	=	-L mlx -l mlx -framework OpenGL -framework AppKit

GCC		=	gcc

FLAGS	=	-g -Wall -Wextra -Werror

all: comp_start $(NAME)

$(NAME): $(OBJS)
	@$(GCC) $(FLAGS) $(OBJS) $(LINKS) $(LIB) -o $(NAME)
	@tput setaf 2
	@printf 'Executable ready\n'
	@tput setaf 7

comp_start:
	@$(MLX)
	@tput setaf 2
	@printf 'MLX Compiled\n'
	@tput setaf 7
	@$(LIBFT)
	@tput setaf 2
	@printf 'LIBFT Compiled\n'
	@tput setaf 7

.c.o:
	@$(GCC) $(FLAGS) $(INCLUDE) -c $< -o $(<:.c=.o)

clean:
	@rm -rf $(OBJS)
	@cd Libft && make clean
	@cd mlx && make clean
	@tput setaf 2
	@printf '.o files are removed\n'
	@tput setaf 7

fclean: clean
	@rm -rf $(NAME)
	@cd Libft && make fclean
	@tput setaf 2
	@printf '.o and executable is removed\n'
	@tput setaf 7

re: fclean all

.PHONY: all comp_start clean fclean re