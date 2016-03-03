file_path='E:\FITS';
img_path_list=dir(fullfile(file_path,'*.fit'));
%获取该文件夹中所有的fit格式的图像
img_num=length(img_path_list);
%获取图像总数量
if img_num>0 %满足条件的图像
for j=1:img_num
image_name=img_path_list(j).name;%图像名
image =fitread(fullfile(file_path,image_name));
fpingtf('%d %d %s\n',i,j,strcat(file_path,image_name));
%显示正在处理的图像名
end
