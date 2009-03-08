require 'fileutils'

class Bar
        def initialize(file_name)
                @file_name = file_name.dup # ���������� ��� �����
                FileUtils.touch(@file_name) # ������� ����
                ObjectSpace.define_finalizer(self, Bar.finilazer(@file_name))
        end     

        def Bar.finilazer(file_name)
                lambda {
                        puts "Remove file '#{file_name}'"
                        FileUtils.rm(file_name) # ������ ����
                }
        end
end

b = Bar.new('temp.txt')

