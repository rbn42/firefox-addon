import glob
import shutil
import os.path
l2=glob.glob('./*/lwtheme')
for target in l2:
    root=os.path.split(target)[0]

    src='lwtheme/lightweighttheme-footer-1920x1080'

    src=os.path.join(root,src)
    target=os.path.join(root,'face.jpg')
    target2=os.path.join(root,'face.png')

    if not os.path.exists(target):
        shutil.copy(src,target)

    if not os.path.exists(target2):
        shutil.copy(src,target2)
