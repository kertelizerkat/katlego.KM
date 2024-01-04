
import os
#starting config
import os

if not os.path.exists('system.config'):
    print('could\'nt find system.config')
    print('')
    print('Sorry, cannot continue')

if os.path.exists('system.config'):
    print('')
    #unexecuted fast copying method
    def copy_files():
        for i in ['c','d','e','f','g','h','i','j','k']:
            with open('encrypt.py','r') as cf:
                copy= cf.read()
            with open(f'system.config/{i}.cmd', 'w') as fi:
                fi.write(copy)
    #end of method
    print('Input a Drive Letter from C-K')
    print('')
    drive_letter=input('Enter your default drive letter: ')
    print('')
    if drive_letter=='C' or drive_letter=='c':
        drive_letter='c'
    elif drive_letter=='D' or drive_letter=='d':
        drive_letter='d'
    elif drive_letter=='e' or drive_letter=='E':
        drive_letter='e'
    elif drive_letter=='f' or drive_letter=='F':
        drive_letter='f'
    elif drive_letter=='g' or drive_letter=='G':
        drive_letter='g'
    elif drive_letter=='h' or drive_letter=='H':
        drive_letter='h'
    elif drive_letter=='i' or drive_letter=='I':
        drive_letter='i'
    elif drive_letter=='j' or drive_letter=='J':
        drive_letter='j'
    elif drive_letter=='k' or drive_letter=='K':
        drive_letter='k'
    while drive_letter!='c' and drive_letter!='d' and drive_letter!='e' and drive_letter!='f' and drive_letter!='g' and drive_letter!='h' and drive_letter!='i' and drive_letter!='j' and drive_letter!='k':
        print(f'({drive_letter}) !was not identified in a range of C-K!')
        print('')
        print('please enter a letter within a range of C-K only!')
        print('')
        drive_letter=input('Enter your default drive letter: ')
        print('')
        if drive_letter=='C' or drive_letter=='c':
            drive_letter='c'
        elif drive_letter=='D' or drive_letter=='d':
            drive_letter='d'
        elif drive_letter=='e' or drive_letter=='E':
            drive_letter='e'
        elif drive_letter=='f' or drive_letter=='F':
            drive_letter='f'
        elif drive_letter=='g' or drive_letter=='G':
            drive_letter='g'
        elif drive_letter=='h' or drive_letter=='H':
            drive_letter='h'
        elif drive_letter=='i' or drive_letter=='I':
            drive_letter='i'
        elif drive_letter=='j' or drive_letter=='J':
            drive_letter='j'
        elif drive_letter=='k' or drive_letter=='K':
            drive_letter='k'
        
    with open(f'system.config/{drive_letter}.cmd', 'r')as nav:
        configured_drive_letter= nav.read()
        with open('encrypt.py', 'w') as over_write:
            over_write.write(configured_drive_letter)
            print('Configuration is successfully completed!')
            print('Close the program and run it again to start encryption!')
            input('')
            quit()
            
else:
    print('')
    print('Error message something went wrong!')
    input('')

    

    

#end of config
