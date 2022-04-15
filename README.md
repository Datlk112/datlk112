import os, sys, re, json
try:
  import pystyle
  import requests
  import googletrans
  import bs4
except:
  os.system('pip install requests && pip install pystyle && pip install googletrans && pip install bs4')
from datetime import datetime
import datetime,base64
import threading
from time import sleep
import requests,re,json,random,sys,os
from time import sleep
from time import sleep
from datetime import datetime
import random
import requests, os, sys, re, json
from threading import Thread
import threading
import time
from random import choice, randint, shuffle
os.system('cls')
data_machine = []
os.system('clear')
def banner():
 banner = f"""
 Tool Cb Bảo Trì
.___________.   _______       ___   .___________.
|           |  |       \     /   \  |           |
`---|  |----`  |  .--.  |   /  ^  \ `---|  |----`
    |  |       |  |  |  |  /  /_\  \    |  |     
    |  |     __|  '--'  | /  _____  \   |  |     
    |__|    (__)_______/ /__/     \__\  |__| 
\033[1;33m══════════════════════════════════════════════════════════════
\033[1;34m🌸Chào Mừng Bạn Đến Với Tool Reg Page Set Qtv🌸
\033[1;35m🌸Nếu Tool Có Vấn Đề Gì Không Vô Được Hoặc Cần Hỗ Trợ Gì Thì IB🌸
\033[1;36m🌸https://www.facebook.com/100038252520416🌸
\033[1;33m══════════════════════════════════════════════════════════════                                          
"""
 for X in banner:
  sys.stdout.write(X)
  sys.stdout.flush() 
  sleep(0.01000)
banner();
time = datetime.now()
a=time.strftime("%d")
h=int(time.strftime("%d"))
ngày_trc=h-1
b=time.strftime("%m")
day=time.strftime("%d-%m-%Y")
today=time.strftime("%d-%m-%Y")
d=time.strftime("%d-%m")
encodedBytes = base64.b64encode(d.encode("utf-8"))
key = str(encodedBytes, "utf-8")
long_url=(f"https://jayztool.tk/jayzkey.php/?key={key}")
api_token='d7f7ba72aa36c9bdfe13e11927c1cf366bcd282a'
url=requests.get(f'https://link1s.com/api?api={api_token}&url={long_url}').json()
status=url['status']
link=url['shortenedUrl']
file_key=f'key-ngày{a}.txt'
file_key_cũ=f'key-ngày{ngày_trc}.txt'
check_file_key=os.path.exists(file_key)
if check_file_key == False:
   print("\033[1;91m[\033[1;92m🌸\033[1;91m] \033[1;97m=> \033[1;91m ĐÂY LÀ TOOL FREE NÊN KEY SẼ TỰ ĐỘNG THAY ĐỔI MỖI NGÀY")
   print(f'\033[1;32m  Link Lấy Key Free : \033[1;36m{link} ')
   print(f' \033[1;34m┌─[\033[1;37m\033[1;42mVui Lòng Nhập Key Đã Vượt Link\033[0m\033[1;34m]')
   while(True):
      ma=input(f" \033[1;34m└──╼ \033[1;35m❯\033[1;36m❯\033[1;31m❯\033[1;32m Nhập Key\033[1;32m Ngày\033[1;37m {today}:\033[1;33m")
      if ma == key :
         print('\033[1;32m API Key Chính Xác')
         luu=open(file_key, 'a+')
         luu.write(ma)
         luu.close()
         break
      elif ma != key:
         print('\033[1;31m API Key Sai')
elif check_file_key == True:
  print('\033[1;91m  ●  Đang Kiểm Tra Key Đã Nhập Trước Đó ...  ●',end='\r')
  sleep(2)
  k=open(file_key, 'r')
  ma=k.read()
  k.close()
  if ma == key :
    print('\033[1;96m  ●  Key Chính Xác Đang Chuyển Hướng Vào Tool  ●       ',end='\r')
    sleep(2)
  elif ma != key:
    if os.path.exists(file_key_cũ) == True:
      os.system(f'rm {file_key_cũ}')
    os.system(f'rm {file_key}')
    print('\033[1;31m API Key Sai         ')
    while(True):
      ma=input(f"\033[1;37m[\033[1;31m✓\033[1;37m]\033[1;37m =>\033[1;32m Nhập API Key\033[1;32mNgày \033[1;37m{today}: \033[1;33m")
      if ma == key :
        print('\033[1;32m API Key Chính Xác')
        luu=open(file_key, 'a+')
        luu.write(ma)
        luu.close()
        break
      elif ma != key:
        print('\033[1;31m API Key Sai           ')
data = []
os.system("clear")
def banner():
 banner = f"""
\033[1;34m.___________.   _______       ___   .___________.
\033[1;35m|           |  |       \     /   \  |           |
\033[1;36m`---|  |----`  |  .--.  |   /  ^  \ `---|  |----`
\033[1;32m    |  |       |  |  |  |  /  /_\  \    |  |     
\033[1;37m    |  |     __|  '--'  | /  _____  \   |  |     
\033[1;31m    |__|    (__)_______/ /__/     \__\  |__|     
                                                 
"""
 for X in banner:
  sys.stdout.write(X)
  sys.stdout.flush() 
  sleep(0.01000)
banner();
print ("\033[1;32m┌─Nhập File Chứa Cookie")
khocc = input('└──╼\033[1;35m❯\033[1;36m❯\033[1;31m❯')
file_cc= khocc
k=open(file_cc, 'r')
cc=k.read()
k.close()
fileck=cc
luuchonset = str(input("\033[1;33m🌸Bạn Có Muốn Set QTV Sau Khi Reg(y/n):"))
if luuchonset=='y':
    idset = str(input('\033[1;37m🌸Nhập ID Cần Nhận Page :'))
    print("\033[1;36m┌─Nhập Mật Khẩu Facebook Reg Page")
    passset = str(input('└──╼\033[1;35m❯\033[1;36m❯\033[1;31m❯'))
data.append(fileck)
check_cookie = len(data)
print("🌸\033[0;34mĐể Trên 1500 Là Ổn")
print ("\033[1;32m┌─Nhập Thời Gian Reg")
delay = int(input('└──╼\033[1;35m❯\033[1;36m❯\033[1;31m❯'))
if delay < 1500:
	print ("🌸\033[1;34mĐể Thấp Vậy Ăn Block Sớm Đấy")
def banner():
 banner = f"""
\033[1;33m═══════════════════════════════════════════════════════════════
\033[1;36m🌸Vui Lòng Kiểm Tra Lại 1 Lần Nữa Xem Có Gì Sai Không🌸
\033[1;34m🌸Không Có Gì Thì Ấn Enter Để Chạy🌸
\033[1;33m═══════════════════════════════════════════════════════════════
"""
 for X in banner:
  sys.stdout.write(X)
  sys.stdout.flush() 
  sleep(0.01000)
banner();
input()
os.system('clear')
print(' \033[1;32m🌸═══════════════════════════════════════════════════════════🌸')

for i in range(check_cookie):
    
    cookie = data[i]
    headers = {
        'cookie': cookie
    }
    
    try:
        print("Đang Check Live Cookie...", end="\r")
        find_data = requests.get("https://m.facebook.com/", headers=headers).text
        jazoest = find_data.split('name="jazoest" value="')[1].split('"')[0]
        fb_dtsg = find_data.split('name="fb_dtsg" value="')[1].split('"')[0]
    except:
        print('Cookie Die Rồi Đầu Cặc ')
        

    try:
        headgetlike = {
        'cookie': cookie
        }
        gettoken = requests.get('https://business.facebook.com/business_locations/',headers=headgetlike).text
        tk23 = gettoken.split('EAAG')[1].split('"')[0]
        token_fb = f'EAAG{tk23}'

        
        getuid = json.loads(requests.get(f'https://graph.facebook.com/me/?access_token={token_fb}').text)
        
        uid = getuid['id']
        
    except:
        exit() 
    
    gom = f'{cookie}|{uid}|{fb_dtsg}|{jazoest}'
    data_machine.append(gom)
thread_count = len(data_machine)


def dl(i):
    global thread_count
    if thread_count == 1:
        cookie = data_machine[0].split('|')[0]
        uid = data_machine[0].split('|')[1]
        fb_dtsg = data_machine[0].split('|')[2]
        jazoest = data_machine[0].split('|')[3]
    else:
        try:
            cookie = data_machine[i].split('|')[0]
            uid = data_machine[i].split('|')[1]
            fb_dtsg = data_machine[i].split('|')[2]
            jazoest = data_machine[i].split('|')[3]
        except:
            pass
    name = requests.get('https://story-shack-cdn-v2.glitch.me/generators/vietnamese-name-generator/male?count=2').json()['data'][0]['name']
    headers = {
        'authority': 'www.facebook.com',
        'content-type': 'application/x-www-form-urlencoded',
        'sec-ch-ua-mobile': '?0',
        'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',
        'sec-ch-ua': '"Google Chrome";v="95", "Chromium";v="95", ";Not A Brand";v="99"',
        'sec-ch-ua-platform': '"Windows"',
        'x-fb-friendly-name': 'CometPageCreateMutation',
        'accept': '*/*',
        'sec-fetch-site': 'same-origin',
        'sec-fetch-mode': 'cors',
        'sec-fetch-dest': 'empty',
        'referer': 'https://www.facebook.com/pages/creation/?ref_type=launch_point',
        'accept-language': 'en-US,en;q=0.9',
        'cookie': cookie,
    }

    data = {
        'av': uid,
        '__user': uid,
        '__a': '1',
        '__dyn': '',
        '__csr': '',
        '__req': '22',
        '__hs': '',
        'dpr': '1',
        '__ccg': 'EXCELLENT',
        '__rev': '',
        '__s': '',
        '__hsi': '',
        '__comet_req': '1',
        'fb_dtsg': fb_dtsg,
        'jazoest': jazoest,
        'lsd': '',
        '__spin_r': '',
        '__spin_b': '',
        '__spin_t': '',
        'fb_api_caller_class': 'RelayModern',
        'fb_api_req_friendly_name': 'CometPageCreateMutation',
        'variables': '{"input":{"categories":["198327773511962"],"description":"BùiTuấn Đạt","name":"'+name+'","publish":true,"ref":"launch_point","actor_id":"'+uid+'","client_mutation_id":"2"}}',
        'server_timestamps': 'true',
        'doc_id': '6015849741773814'
    }

    response = requests.post(
        'https://www.facebook.com/api/graphql/', headers=headers, data=data)
    json_res = response.json()
    response_create = json_res['data']['page_create']
    if response_create == None:
        error = json_res['errors'][0]['summary']
        x = datetime.now().strftime("%H:%M:%S")
        print(f'\033[1;32m[❎]\033[1;37m[\033[1;32m{x}\033[1;37m] \033[1;35m\033[1;37m => \033[1;35m{error}')
        exit()
    error_msg = response_create['error_message']
    msg = response_create['page_name_error']
    page = response_create['page']

    if error_msg == None and msg == None:
        id = page['id']
        x = datetime.now().strftime("%H:%M:%S")
        list_mau = ['\033[1;32m', '\033[1;33m',
            '\033[1;34m', '\033[1;36m', '\033[1;37m', '\033[0;31m ', '\033[1;35m', '\033[1;30m', '\033[0;30m', '\033[0;32m' ,'\033[0;34m', '\033[0;36m', '\033[0;35m', '\033[1;31m']
        print(f'\033[1;36m [BTĐ]\033[1;33m 🌸Thành Công🌸\033[1;37m{id}🌸\033[1;34m{name}🌸')
        print('\033[1;32m 🌸═══════════════════════════════════════════════════════════🌸')
        if luuchonset=='y':        
            headers = {
                    'Connection': 'keep-alive',
                    'Keep-Alive': '300',
                    'authority': 'www.facebook.com',
                    #'accept-Charset': 'ISO-8859-1,utf-8;q=0.7,*;q=0.7',
                    'accept-language': 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5',
                    'cache-control': 'max-age=0',
                    'upgrade-insecure-requests': '1',
                    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36',
                    'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
                    'sec-fetch-site': 'none',
                    'sec-fetch-mode': 'navigate',
                    'sec-fetch-user': '?1',
                    'sec-fetch-dest': 'document',
                    'cookie': cookie
                    }
            data = {
                    'user_id': idset,
                    'role': '0',
                    'page_id': id,
                    'use_roles': 'false',
                    '__a': '1',
                    'fb_dtsg': fb_dtsg,
                    'ajax_password': passset,
                    'confirmed': '1'
                    }
            url = f'https://www.facebook.com/presma/admin_roles/add_admin/'
            x = requests.post(url, headers=headers, data=data)
        return True
    elif error_msg == None:
        x = datetime.now().strftime("%H:%M:%S")
        print(f'\033[1;32m[❎] \033[1;37m[\033[1;32m{x}\033[1;37m] \033[1;35m => \033[1;35m{msg}')
        exit()
    else:
        x = datetime.now().strftime("%H:%M:%S")
        print(f'\033[1;32m[❎] \033[1;37m[\033[1;32m{x}\033[1;37m] \033[1;35m => \033[1;35m{error_msg}')
        exit()




while True:
    for i in range(check_cookie):
        new_thread = threading.Thread(target=dl, args=(i,)).start()
    while threading.active_count() > 1:
        pass
    for i in range(delay, -1, -1):
        print(
            f'\033[0;34mVui Lòng Đợi {i} 🍎   ', end='\r')
        sleep(0.25)
        print(
            f'\033[1;37mVui Lòng Đợi {i} 🍎🍎   ', end='\r')
        sleep(0.25)
        print(
            f'\033[1;33mVui Lòng Đợi {i} 🍎🍎🍎   ', end='\r')
        sleep(0.25)
        print(
            f'\033[1;31mVui Lòng Đợi {i} 🍎🍎🍎🍎    ', end='\r')
        sleep(0.25)













