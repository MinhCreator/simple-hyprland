import subprocess


def trim_symble_str(s : str) -> list[str]:

    return [ x for x in s.split('\n')]

def get_wall(p: str):
    with open(p, 'w+') as path:
        out = subprocess.run(f"swww query | grep -oP '/home/minhcreatorvn/Pictures/wallpaper\S+\.(jpg|png|jpeg|webp)'", shell=True, capture_output=True, text=True)
        
        trim_enter = trim_symble_str(out.stdout)[0]
        
        out_format = f"  BG:  url('{trim_enter}');".format()
        
        x = ["* { \n", out_format, '\n' ,'}']
        for c in x:

            print(c, file=path)
       


path = "/home/minhcreatorvn/.config/rofi/wall.rasi"
print(get_wall(path))