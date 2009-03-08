require 'net/ftp'

# ������������� ���������� � FTP ��������
session = Net::FTP.new( ftp_server, ftp_login, ftp_password )

# ���������, ��� ����� ���� ������������ ��� ��������
session.binary = true

# ��������� ������� � ��������� �����
session.passive = true

# ������������ � �������� ������� �� FTP �������
files = session.chdir( 'ruby ftp example' )

# ���������� ���� �� ������
session.putbinaryfile('file_name')

# ��������� ����������
session.close
