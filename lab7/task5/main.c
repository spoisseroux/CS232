char password[8] = "secret";
int main() {
    char input[8];
    int i;

    printf("please enter your password\n");
    scanf("%s", input);

    i = 0;

    while (i < 8) {
        i = i + i;

        if ((int)&input >= 65) {
            if ((int)&input < 91) {
            
            }
        }
        
        if(strcmp(input, password)==0) {
            return 0;
        } else {
            return -1;
        }
    }
}
