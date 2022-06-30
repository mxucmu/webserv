# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mxu <mxu@student.42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/17 14:47:54 by mxu               #+#    #+#              #
#    Updated: 2022/06/28 14:27:37 by mxu              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = webserv

CFLAGS = -Wall -Wextra -Werror -std=c++98 

OBJECTS = $(patsubst %.cpp,%.o,$(wildcard *.cpp))

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJECTS)
	c++ $(CFLAGS) $(OBJECTS) -o $(NAME)

$(OBJECTS): %.o: %.cpp
	c++ $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS)

remove:
	rm ./site/infile.txt
	rm ./site/outfile.txt

fclean: clean
	rm -f $(NAME)

re: fclean all
