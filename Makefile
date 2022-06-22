CC=gcc
FLAGS=-g -Wall

ftp: ftpserv.o ftp.o servfunctions.o clientfunctions.o
	$(CC) $(FLAGS) -o ftpServer ftp_serv.o servfunctions.o -I .
	$(CC) $(FLAGS) -o ftpClient ftp.o clientfunctions.o -I .
	rm -f *.o

ftp.o:
	$(CC) -c ftp.c
ftpserv.o:
	$(CC) -c ftp_serv.c

servfunctions.o:
	$(CC) -c servfunctions.c

clientfunctions.o:
	$(CC) -c clientfunctions.c

clean:
	$(RM) *.o
