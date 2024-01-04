import os
print('Notice!! you can only decrypt a file if only you have encrypted it using the same my method !')
print('')
filename= str(input('Enter the file-path to encrypt or decrypt your file :'))
analyst=str(input('Are you in encryting(E) or decrypting(D) E/D :'))
if analyst=='d' or analyst=='D':
    extention=input('enter your file extention:')
if not os.path.exists('collector2'):
    os.mkdir('collector2')
if  os.path.exists(filename):
    with open(filename, 'r') as file:
        if analyst=='E' or analyst=='e' :
            text= file.read()
            textbine=' '.join(format(ord(c), 'b') for c in text)
            crypt=textbine
            try:
                r=str(crypt)
                re=len(r)-1
                time=re/240
                time=int(time)
                minutes=time/60
                minutes=int(minutes)
                print(f'there are {re} binary characters')
                print('')
                print(f'Estimated time to complete is {time} seconds which is equivalent to {minutes} minutes')
                print('')
                storer=''
                while re>=0:
                    storer= storer + r[re]
                    print(f'{re} characters left')
                    re=re-1
                print('_____________________________________________________________')
                print('')
                print(f'{storer}')
                print('')
                print('______________________________________________________________')
                print('')
                print('stage 1 Encryption complete!')
            except:
                print('could not encrypt!')
            extention=str(input('Enter the extention of your new file :'))
            if not os.path.exists(f'collector2/{filename}(decryption)'):
                os.mkdir(f'collector2/{filename}(decryption)')
            try:
                os.chdir(f'collector2/{filename}(decryption)')
            except:
                print('directory could not be changed')
            with open(f'{filename}2(decryption){extention}', 'w') as file2:
                file2.write(storer)
            try:
                os.chdir(r'J:\project2')
            except:
                print('directory could not be changed')
            try:
                crypt2=str(storer)
                crypt2txt="".join(chr(int(c, 2)) for c in crypt2.split(" "))
            except:
                print('could not encrypt!')
        
            with open(filename, 'w') as f:
                f.write(crypt2txt)
                print('')
                print('stage 2 Encryption complete!')
        elif analyst=='D' or analyst=='d':
            if not os.path.exists(f'collector2/{filename}(decryption)'):
                print('could not find decryption code!!')
            try:
                os.chdir(f'collector2/{filename}(decryption)')
            except:
                print('directory could not be changed')
            if os.path.exists(f'{filename}2(decryption){extention}'):
                with open(f'{filename}2(decryption){extention}', 'r') as file2:
                    decrypt=file2.read()
                    try:
                        r=str(decrypt)
                        re=len(r)-1
                        time=re/240
                        time=int(time)
                        minutes=time/60
                        minutes=int(minutes)
                        print(f'there are {re} binary characters')
                        print('')
                        print(f'Estimated time to complete is {time} seconds which is equivalent to {minutes} minutes')
                        print('')
                        destorer=''
                        while re>=0:
                            destorer= destorer + r[re]
                            print(f'{re} characters left')
                            re=re-1
                        print('_____________________________________________________________')
                        print('')
                        print(f'{destorer}')
                        print('')
                        print('______________________________________________________________')
                        print('')
                        print('stage 1 Decryption complete!')
                    except:
                        print('could not decrypt!')
                    try:
                        decrypt2=str(destorer)
                        decrypt2txt="".join(chr(int(c, 2)) for c in decrypt2.split(" "))
                    except:
                        print('could not decrypt')

                    with open((r'J:/project2/'+ filename), 'w') as f:
                        try:
                            f.write(decrypt2txt)
                            print('_____________________________________________________________')
                            print('')
                            print(f'{decrypt2txt}')
                            print('______________________________________________________________')
                            print('')
                            print('stage 2 Decryption complete!')
                        except:
                            print('could not decrypt!')
            try:
                os.chdir(r'J:\project2')
            except:
                print('directory could not be changed')
else:
    print('file does not exist!')
                    
input('')    
