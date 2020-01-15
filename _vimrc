"
"           __   _,--="=--,_   __
"          /  \."    .-.    "./  \
"         /  ,/  _   : :   _  \/` \
"         \  `| /o\  :_:  /o\ |\__/
"          `-'| :="~` _ `~"=: |
"             \`     (_)     `/
"      .-"-.   \      |      /   .-"-.
" .---{     }--|  /,.-'-.,\  |--{     }---.
"  )  (_)_)_)  \_/`~-===-~`\_/  (_(_(_)  (
" (        0 Error(s) 0 Warning(s)        )
"  )       Jinle Wang@Starnet            (
" '---------------------------------------'            

" -----------------------------------------------------------------------------
" �жϲ���ϵͳ�Ƿ��� Windows ���� Linux
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
    source $VIM/_gvimrc                             " ����gvim���������
else
    let g:islinux = 1
endif

" -----------------------------------------------------------------------------
" vim����
" -----------------------------------------------------------------------------
set nocompatible                                  " ���� Vi ����ģʽ
set encoding=utf-8                                " ���� vim �ڲ����룬Ĭ�ϲ�����
"set fileencoding=cp936
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1 " ����֧�ִ򿪵��ļ��ı���
                                                  " �ļ���ʽ��Ĭ�� ffs=dos,unix
"set fileformat=unix                               " �����£���ǰ���ļ���<EOL>��ʽ�����Ը��ģ��磺dos��windowsϵͳ���ã�
set fileformats=unix,dos,mac                      " �����ļ���<EOL>��ʽ����
if version >= 603
	set helplang=cn                               " ʹ�����İ���
endif

filetype on                            " �����ļ��������
filetype plugin on                     " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on              " ��������

if has("syntax")
	syntax on                          " enables syntax highlighting by default
endif
set t_Co=256                           " ���ն�����256ɫ
colorscheme molokai                    " ������ɫ����
set guifont=Courier_new:h12:b:cDEFAULT " ��������

set hlsearch                           " ��������
set incsearch                          " ������Ҫ����������ʱ��ʵʱƥ��
set ignorecase                         " ����ģʽ����Դ�Сд
set smartcase                          " �������ģʽ������д�ַ�����ʹ�� 'ignorecase' ѡ��
set number                             " ��ʾ�к�
set laststatus=2                       " ����״̬����Ϣ
set cursorline                         " ͻ����ʾ��ǰ��
set cmdheight=2                        " ���������еĸ߶�Ϊ2��Ĭ��Ϊ1
set nowrap                             " ���ò��Զ�����
"set shortmess=atI                     " ȥ����ӭ����
set tabstop=4                          " ����Tab���Ŀ�ȣ����Ը��ģ��磺���Ϊ2
"set mouse-=a                          " a ���κ�ģʽ��������� -a:���������
set backspace=2                        " backspace ����
set smarttab                           " ָ����һ��backspace��ɾ��shiftwidth���
set shiftwidth=4                       " ����ʱ�Զ�������ȣ��ɸ��ģ����ͬtabstop��
set expandtab                          " ��Tab��ת��Ϊ�ո�
set smartindent                        " �������ܶ��뷽ʽ
set writebackup                        " �����ļ�ǰ�������ݣ�����ɹ���ɾ���ñ���

"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)" ����ÿ�г���80�е��ַ���ʾ��������������»��ߣ�
if has("autocmd")
	" ���´��ļ�ʱ�ص��ϴ�λ�� 
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" �Զ��л�Ŀ¼Ϊ��ǰ�༭�ļ�����Ŀ¼(��vim-fugitive Gdiff�����г�ͻ)
" au BufRead,BufNewFile,BufEnter * cd %:p:h
" �Զ��л�Ŀ¼Ϊ��ǰ�༭�ļ�����Ŀ¼(��vim-fugitive Gdiff�����ͻ)
autocmd BufEnter * if expand('%:p') !~ '://' | cd %:p:h | endif
