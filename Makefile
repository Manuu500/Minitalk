NAME_SERVER = server

NAME_CLIENT = client

SERVER_FILE = server.c

CLIENT_FILE = client.c

OBJECT_SERVER = $(SERVER_FILE:.c=.o)

OBJECT_CLIENT = $(CLIENT_FILE:.c=.o)

FLAGS = -Werror -Wall -Wextra

LIBFT = ./libft/libft.a


$(NAME_SERVER):		$(SERVER_FILE) $(LIBFT) 
						@gcc $(FLAGS) $(SERVER_FILE) -o $(NAME_SERVER) $(LIBFT)

$(NAME_CLIENT):		$(CLIENT_FILE) $(LIBFT) 
						@gcc $(FLAGS) $(CLIENT_FILE) -o $(NAME_CLIENT) $(LIBFT)

$(LIBFT):
						@make -s -C ./libft

all: 				$(NAME_SERVER) $(NAME_CLIENT)

clean:
						@rm -f $(OBJECT_SERVER) $(OBJECT_CLIENT) $(OBJECT_SERVER_BONUS) $(OBJECT_CLIENT_BONUS)
						@make clean -s -C ./libft

fclean:
						@rm -f $(NAME_SERVER) $(NAME_CLIENT) $(NAME_SERVER_BONUS) $(NAME_CLIENT_BONUS) $(OBJECT_SERVER) $(OBJECTS_CLIENT) $(OBJECT_SERVER_BONUS) $(OBJECT_CLIENT_BONUS) $(LIBFT)
						@make fclean -s -C ./libft

re: fclean all

.PHONY: all re clean fclean bonus