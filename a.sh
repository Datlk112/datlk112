from function import *; import requests as s; from sys import exit; import json, platform, time
try:
  import click
except:
  os.system('pip install click')
def main():
	
    tds = TraoDoiSub()
    
    #Login tài khoản mật khẩu
	
    userTds = "datlk114a"
    passTds = "16641164"

    
    login = tds.loginTDS(userTds, passTds)
    if login['status'] == "success":
        token = login['data']['token']
        user = userTds
        xu = login['data']['xu']
        thanhNgang(42)
        print("\033[1;32mĐăng nhập thành công")   
        thanhNgang(42)
        print ("\033[1;36mTài Khoản:",user)
        print ("\033[1;37mXu:",xu)
    else:
        exit("\033[1;31mĐăng nhập TDS thất bại")

    #Nếu dùng muốn dùng bằng token thì comment đoạn code trên thay cho đoạn này
    # token = input("Nhập token TDS: ")
    # checkToken = s.get(f"https://traodoisub.com/api/?fields=profile&access_token={token}").json()
    # if "success" in checkToken:
    #     token = checkToken['data']['token']
    #     user = checkToken['data']['user']
    #     xu = checkToken['data']['xu']
    #     print("Đăng nhập thành công")
    # else:
    #     exit("Đăng nhập TDS thất bại")
    time.sleep(0)
    thanhNgang(42)
    job = int(input("\033[1;31m1 \033[1;37m=> \033[1;36mFollow\n\033[1;31m2 \033[1;37m=> \033[1;36mTym Video\n\033[1;32mVui lòng chọn nhiệm vụ: \033[1;33m"))
    delay = int(input("\033[1;32mNhập delay làm nhiệm vụ: \033[1;33m"))
    
    h = 0
    while(200):
        if job == 1:
            getFollow = tds.getFolowTik(token)
            for x in getFollow:
                id = x['id']
                link = x['link']
                h+=1
                print(f"\033[1;31m{h} \033[1;37m| \033[1;32mTikTok \033[1;37m| \033[1;33mFollow \033[1;37m| \033[1;33mUser \033[1;36m{str(link).split('/@')[1]}")
                click.launch(link)
                for i in range(delay, 0, -1):
                    print(f"\033[1;32mLàm nhiệm vụ tiếp theo trong \033[1;33m{i} \033[1;32mgiây   ", end="\r")
                    time.sleep(1)
                cache = tds.postCache("FOLLOW", id, token)
                if int(cache) >= 8:
                    time.sleep(2)
                    getxu = tds.getXuJob("FOLLOW", token)
                    print(f"\033[1;32mNhận thành công \033[1;33m{getxu} \033[1;32mxu                ")
                
                time.sleep(3)
        if job == 2:
            getTym = tds.getTymTik(token)
            for x in getTym:
                id = x['id']
                link = x['link']
                h+=1
                print(f"\033[1;31m{h} \033[1;37m| \033[1;32mTikTok \033[1;37m| \033[1;33mTym Video \033[1;37m| \033[1;33mID Video \033[1;36m{str(link).split('video/')[1]}")
                click.launch(link)
                for i in range(delay, 0, -1):
                    print(f"\033[1;32mLàm nhiệm vụ tiếp theo trong \033[1;33m{i} \033[1;32mgiây   ", end="\r")
                    time.sleep(1)
                cache = tds.postCache("LIKE", id, token)
                if int(cache) >= 8:
                    time.sleep(2)
                    getxu = tds.getXuJob("LIKE", token)                     
                    print(f"\033[1;32mNhận thành công \033[1;33m{getxu} \033[1;32mxu                ")
                  
                
                time.sleep(1)
            

if (__name__ == "__main__"):
    main()
