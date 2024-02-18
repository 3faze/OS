void kmain(){
   char *vidmem = (char *)0xB8000;
    char *string = "Loading...";

    while(*string != 0) {

       *vidmem++ = *string++;
          *vidmem++ = 0x07;

    }
}
