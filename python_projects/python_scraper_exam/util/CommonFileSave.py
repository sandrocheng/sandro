# @Version : 1.0
# @Author : sandro
# @Time :2025/12/28 15:46
import json
import os

def make_dir(path_dir:str):

    if not os.path.exists(path_dir):
        os.makedirs(path_dir)
    else:
        if not os.path.isdir(path_dir):
            print(f"\033[31m {path_dir}不是目录名 ,无法在该目录下保存文件\033[0m")
            return False
    return True

def saveJsonFile(json_data,_sub_dir:str,_file_name:str):
    path_dir = '../downloads/' + _sub_dir
    if not make_dir(path_dir):
        return
    fp = open(path_dir+"/"+_file_name+".json","w",encoding="utf-8")
    #使用json.dum把json数据保存到文件中去
    #默认行为与问题：‌ 当ensure_ascii=True（默认值）时，
    # json.dump()会将所有非ASCII字符转义为Unicode编码（如中文“你好”会被转换为\u4f60\u597d），
    # 这可能导致输出结果可读性差，尤其在涉及国际化内容时。‌
    #参数作用：‌ 设置ensure_ascii=False可避免非ASCII字符的转义，
    # 使其以原始字符形式输出（如直接显示“你好”），从而提升可读性和用户体验。‌
    json.dump(json_data,fp,ensure_ascii=False)#ensure_ascii要指定false，否则中文乱码
    fp.close()

def saveHtmlFile(_text:str,_sub_dir:str,_file_name:str,_file_type:str) ->None :
    """
    :param _text: 需要保存的文本内容
    :param _sub_dir: 子文件夹名称
    :param _file_name: 文件名称
    :param _file_type: 保存的文件类型
    :return:
    """
    path_dir = '../downloads/' + _sub_dir
    if not make_dir(path_dir):
        return
    with open(path_dir+"/"+_file_name+"."+_file_type,"w",encoding="utf-8") as f:
        f.write(_text)

def saveBytesFile(_bits:bytes,_sub_dir:str,_file_name:str,_file_type:str) ->None :
    """
    :param _bits: 需要保存的二进制数据
    :param _sub_dir: 子文件夹名称
    :param _file_name: 文件名称
    :param _file_type: 保存的文件类型
    :return:
    """
    path_dir = '../downloads/' + _sub_dir
    if not make_dir(path_dir):
        return
    with open(path_dir+"/"+_file_name+"."+_file_type,"wb") as f:
        f.write(_bits)

if __name__ == "__main__":
    saveHtmlFile("aaa","01_requests模块","test","text")