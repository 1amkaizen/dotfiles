#!/bin/bash

# ================================================
# Script untuk menginstall plugin Vim secara otomatis
# Menggunakan Vundle dan manual git clone untuk beberapa plugin
# ================================================

echo "🔧 Menginstall Vundle (Plugin Manager Vim)..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# ================================================
# Plugin via manual cloning
# ================================================

# Membuat direktori plugin via 'pack' untuk tpope (fugitive)
echo "📦 Menginstall vim-fugitive (via pack)..."
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git

# Generate helptags untuk fugitive (biar :help jalan)
vim -u NONE -c "helptags fugitive/doc" -c q

# Plugin lain via ~/.vim/bundle
echo "📦 Menginstall plugin tambahan..."
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

echo "📦 Menginstall gundo.vim..."
git clone https://github.com/sjl/gundo.vim.git

echo "📦 Menginstall tabular..."
git clone git://github.com/godlygeek/tabular.git

echo "📦 Menginstall vim-airline..."
git clone https://github.com/vim-airline/vim-airline.git

echo "📦 Menginstall vim-airline-themes..."
git clone https://github.com/vim-airline/vim-airline-themes.git

echo "📦 Menginstall nerdtree..."
git clone https://github.com/preservim/nerdtree.git

# Plugin via 'pack' untuk bahasa pemrograman
echo "📦 Menginstall vim-go dan rust.vim (via pack)..."
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start

echo "📦 Menginstall vim-go..."
git clone https://github.com/fatih/vim-go.git

echo "📦 Menginstall rust.vim..."
git clone https://github.com/rust-lang/rust.vim.git

echo "✅ Semua plugin berhasil di-clone!"
echo "📜 Jalankan Vim dan ketik :PluginInstall untuk install plugin dari Vundle."
