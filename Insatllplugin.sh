#!/bin/bash

# Warna
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ================================================
# Script untuk menginstall plugin Vim secara otomatis
# Menggunakan Vundle dan manual git clone untuk beberapa plugin
# ================================================

echo -e "${CYAN}🔧 Menginstall Vundle (Plugin Manager Vim)...${NC}"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# ================================================
# Plugin via manual cloning
# ================================================

# Membuat direktori plugin via 'pack' untuk tpope (fugitive)
echo -e "${YELLOW}📦 Menginstall vim-fugitive (via pack)...${NC}"
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git

# Generate helptags untuk fugitive (biar :help jalan)
vim -u NONE -c "helptags fugitive/doc" -c q

# Plugin lain via ~/.vim/bundle
echo -e "${YELLOW}📦 Menginstall plugin tambahan...${NC}"
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

echo -e "${BLUE}📦 Menginstall gundo.vim...${NC}"
git clone https://github.com/sjl/gundo.vim.git

echo -e "${BLUE}📦 Menginstall tabular...${NC}"
git clone git://github.com/godlygeek/tabular.git

echo -e "${BLUE}📦 Menginstall vim-airline...${NC}"
git clone https://github.com/vim-airline/vim-airline.git

echo -e "${BLUE}📦 Menginstall vim-airline-themes...${NC}"
git clone https://github.com/vim-airline/vim-airline-themes.git
sudo apt install vim-airline-themes

echo -e "${BLUE}📦 Menginstall nerdtree...${NC}"
git clone https://github.com/preservim/nerdtree.git

# Plugin via 'pack' untuk bahasa pemrograman
echo -e "${YELLOW}📦 Menginstall vim-go dan rust.vim (via pack)...${NC}"
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start

echo -e "${BLUE}📦 Menginstall vim-go...${NC}"
git clone https://github.com/fatih/vim-go.git

echo -e "${BLUE}📦 Menginstall rust.vim...${NC}"
git clone https://github.com/rust-lang/rust.vim.git

echo -e "${GREEN}✅ Semua plugin berhasil di-clone!${NC}"
echo -e "${CYAN}📜 Jalankan Vim dan ketik :PluginInstall untuk install plugin dari Vundle.${NC}"
