NAME        = libft.a
CC          = cc
CFLAGS      = -Wall -Wextra -Werror
AR          = ar
ARFLAGS     = rcs

SRCS        = 
OBJS        = $(SRCS:.c=.o)

all: $(NAME)
	@echo "Compilation completed: $(NAME)"

$(NAME): $(OBJS)
	@echo "Creating library..."
	@$(AR) $(ARFLAGS) $(NAME) $(OBJS)

%.o: %.c libft.h
	@echo "Compiling..."
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@echo "Removing object files..."
	@rm -rf $(OBJS)
	@echo "Clean done."

fclean: clean
	@echo "Removing library..."
	@rm -rf $(NAME)
	@echo "Fclean done."	

re: fclean all

.PHONY: all clean fclean re