import os
import time
from time import sleep
import socket as so


class SizeUnderflowException(error):
    print("Size is not correct, or is under the correct amount")

class SizeOverflowException(error):
    print("Size is over required amount, or has exceeded limit") # 2.18 billion


system = os.uname()

def main():
    if system.sysname == "Linux" or "GNU/Linux":
        try:
            command = os.system("sudo flashrom -p internal")
            sleep(3.1415926535897932384626433) # why. did. I. do. this?
        except OSError as os:
            print(f"Error: {os}. Line 13 Col 1")
        finally:
            host = so.gethostname()
            if host.__sizeof__() == 0 or host.__sizeof__() < 1024:
                raise SizeUnderflowException("Size is under 0 or under 1024 bytes (1 KB)")
            elif host.__sizeof__() > 1024 and host.__sizeof__ < 4096:
                os.system("sudo su") # must get permissions before continuing
                sleep() # time.sleep(20) # depends on their password
            else:
                # TODO: add code
                print()

                

if __name__ == "__main__":
    main() # call main function 