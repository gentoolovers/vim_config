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
"  < �жϲ���ϵͳ�Ƿ��� Windows ���� Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif




" -----------------------------------------------------------------------------
"  < �������� >
" -----------------------------------------------------------------------------
set encoding=utf-8                                    "����gvim�ڲ����룬Ĭ�ϲ�����
" set fileencoding=utf-8                                "���õ�ǰ�ļ����룬���Ը��ģ��磺gbk��ͬcp936��
set fileencoding=cp936
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "����֧�ִ򿪵��ļ��ı���
" �ļ���ʽ��Ĭ�� ffs=dos,unix
set fileformat=unix                                   "�����£���ǰ���ļ���<EOL>��ʽ�����Ը��ģ��磺dos��windowsϵͳ���ã�
set fileformats=unix,dos,mac                          "�����ļ���<EOL>��ʽ����
if version >= 603
	set helplang=cn             " ʹ�����İ���
endif

" -----------------------------------------------------------------------------
"  < �������� >
" -----------------------------------------------------------------------------
set nocompatible                                      "���� Vi ����ģʽ
filetype on                                           "�����ļ��������
filetype plugin on                                    "��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on                             "��������

if has("syntax")
	syntax on 											" enables syntax highlighting by default
endif
set t_Co=256                   							" ���ն�����256ɫ
colorscheme molokai										" ������ɫ����
set guifont=Courier_new:h12:b:cDEFAULT					" ��������


set hlsearch                                            "��������
set incsearch       									"������Ҫ����������ʱ��ʵʱƥ��
set ignorecase                                        "����ģʽ����Դ�Сд
set smartcase                                         "�������ģʽ������д�ַ�����ʹ�� 'ignorecase' ѡ��
set number                                            "��ʾ�к�
set laststatus=2                                      "����״̬����Ϣ
set cursorline                                        "ͻ����ʾ��ǰ��
set cmdheight=2                                       "���������еĸ߶�Ϊ2��Ĭ��Ϊ1
set nowrap                                            "���ò��Զ�����
"set shortmess=atI                                    "ȥ����ӭ����
set tabstop=4                                           "����Tab���Ŀ�ȣ����Ը��ģ��磺���Ϊ2
"set mouse-=a                    					  "a ���κ�ģʽ��������� -a:���������
set backspace=2                 			          " backspace ����
set smarttab                                          "ָ����һ��backspace��ɾ��shiftwidth���
set shiftwidth=4                                      "����ʱ�Զ�������ȣ��ɸ��ģ����ͬtabstop��
set expandtab                                         "��Tab��ת��Ϊ�ո�
set smartindent                                       "�������ܶ��뷽ʽ


set writebackup                             "�����ļ�ǰ�������ݣ�����ɹ���ɾ���ñ���

"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)" ����ÿ�г���80�е��ַ���ʾ��������������»��ߣ�
if has("autocmd")
	" ���´��ļ�ʱ�ص��ϴ�λ�� 
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" �Զ��л�Ŀ¼Ϊ��ǰ�༭�ļ�����Ŀ¼
au BufRead,BufNewFile,BufEnter * cd %:p:h

" -----------------------------------------------------------------------------
"  < ��ݼ�ӳ�� >
" -----------------------------------------------------------------------------
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" ע�����������е�"<Leader>"�ڱ����������Ϊ"\"����������ķ�б�ܣ�����<Leader>t
" ָ�ڳ���ģʽ�°�"\"����"t"�������ﲻ��ͬʱ���������Ȱ�"\"����"t"���������һ
" ���ڣ���<Leader>cs���Ȱ�"\"���ٰ�"c"���ٰ�"s"������Ҫ�޸�"<leader>"�������԰�
let mapleader = ","

" -----------------------------------------------------------------------------
"  < Vundle ������������� >
" -----------------------------------------------------------------------------
if g:islinux
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')
endif


Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'qw8880000/vim_ascii_art'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'easymotion/vim-easymotion'
Bundle 'maksimr/vim-jsbeautify'
" Bundle 'jlanzarotta/colorSchemeExplorer'

" =======================> colorSchemeExplorer �������
" ����Ԥ����ɫ����

" =======================> jsbeautify �������
"javascript �����ʽ��

" =======================> vim-easymotion �������
" �����ƶ����

" =======================> vim-multiple-cursors �������
" ����ط�ͬʱ���б༭�Ĳ��

" =======================> powerline �������
" ״̬����������õ�״̬��Ч��

" =======================> nerdtree �������
" ��Ŀ¼��ṹ���ļ�������
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeDirArrows=0 			"let NERDTreeHighlightCursorline=1
nmap <F2> :NERDTreeToggle<CR> 		" ����ģʽ������ F2 ���ò��
nmap <F3> :NERDTree .<CR>

" =======================> BufExplorer �������
" �������ɵ��ڻ������л����൱����һ�ֶ���ļ�����л���ʽ��
" <Leader>be �ڵ�ǰ������ʾ�����б���ѡ���ļ�
" <Leader>bs ˮƽ�ָ����ʾ�����б����ڻ����б����д�ѡ���ļ�
" <Leader>bv ��ֱ�ָ����ʾ�����б����ڻ����б����д�ѡ���ļ�

" =======================> vim_ascii_art�������
" ���� ascii ͼ����һ�����

