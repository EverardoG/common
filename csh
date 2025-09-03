# For cli edits
export EDITOR=emacs
export VISUAL=emacs

# Setup PATH for local binaries
export PATH="$PATH:$HOME/.local/bin"

# Aliases to prevent accidents. -f option overrides -i
alias  rm='rm -i'
alias  mv='mv -i'


# To bypass interactive mode with cp, call \cp instead of cp
alias  cp='cp -i'

# Shorcut for watch
alias  wn='watch -n 0.5'

# Useful cd
alias     cdu='cd ..'
alias    cduu='cd ../..'
alias   cduuu='cd ../../..'
alias  cduuuu='cd ../../../..'

alias     cdd='cd ..'
alias    cddd='cd ../..'
alias   cdddd='cd ../../..'
alias  cddddd='cd ../../../..'

# moos cd
alias  cdmi='cd ~/moos-ivp'
alias  cdml='cd ~/moos-ivp-learn'
alias cdmlm='cd ~/moos-ivp-learn/missions'
alias  cdal='cd ~/moos-ivp-learn/missions/alpha_learn'
alias   cdt='cd ~/moos-ivp-2680'

# Disk space
alias duh1='du -d 1 -h'

# moos cd
alias  cdmi='cd ~/moos-ivp'
alias  cdml='cd ~/moos-ivp-learn'
alias cdmlm='cd ~/moos-ivp-learn/missions'
alias  cdal='cd ~/moos-ivp-learn/missions/alpha_learn'
alias   cdt='cd ~/moos-ivp-2680'

# other cd
alias   cde='cd ~/evo-mariners'
alias   cdh='cd ~/hpc-share'
alias  cdhe='cd ~/hpc-share/evo-mariners-results'

# Paths for moos
PATH=$PATH:~/moos-ivp/bin:~/moos-ivp/scripts
PATH=$PATH:~/moos-ivp-learn/bin:~/moos-ivp-learn/scripts
PATH=$PATH:~/moos-ivp-2680/bin:~/moos-ivp-2680/scripts
# And evo-mariners
PATH=$PATH:~/evo-mariners/bin:~/evo-mariners/scripts

# Shortcuts to build repos
alias  bl='cdml; ./build.sh -j; cd -'
alias  be='cde; ./build.sh -j; cd -'

# For behaviors to be recognized by the helm
export IVP_BEHAVIOR_DIRS=~/moos-ivp/lib:~/moos-ivp-2680/lib:~/moos-ivp-learn/lib

# moos missions
alias    runa='cdal; learnKill; ./launch.sh 10' # full alpha_learn mission
alias   runat='cdal; learnKill; ./launch.sh'
alias   runsa='cdal; learnKill; ./launch_shoreside.sh' # only shoreside
alias  runva='cdal; learnKill; ./launch_vehicle.sh' # only vehicle

# -------------------------------------
# Aliases for hardware testing
# -------------------------------------
# Run Shoreside 5 (swimmers)
alias  rs5='cdal; learnKill; ./init_field.sh --swimmers=5; ./launch_shoreside.sh --swim_file=mit_rand.txt'
alias rs10='cdal; learnKill; ./init_field.sh --swimmers=10; ./launch_shoreside.sh --swim_file=mit_rand.txt'
alias rs20='cdal; learnKill; ./init_field.sh --swimmers=20; ./launch_shoreside.sh --swim_file=mit_rand.txt'

alias rss='cdal; learnKill; ./launch_shoreside.sh --swim_file=mit_rand.txt --ip=192.168.1.231'

# Rescue vehicle with baseline FollowCOM
# Run Vehicle FollowCOM
alias  rvf='runva --observation_radius=100' # --shore=192.168.1.231

# Rescue vehicle with Neural Network Behavior
# Run Vehicle Neural Network
alias rvn='runva --observation_radius=100 --primarybehavior=NeuralNetwork' # --shore=<ip-addr> --neural_network_config=<net-csv>
# alias rvnn='runva --observation_radius=100 --primarybehavior=NeuralNetwork --neural_network_config=net-bv/2025-08-13.lima.50gens_20rpi.trial_0.gen_30.team_31_inds_0.rollout_0.neural_network_abe1.csv'

# Scout vehicle with adversary behavior
# Run Vehicle Scout (Adversary)
alias rvs='runva --observation_radius=100 --primarybehavior=Adversary --vrole=scout --tmate=none' # --shore=192.168.1.231

# -------------------------------------
# Aliases for sshing into pavlab herons
# -------------------------------------
# Front-Seat Computer aliases (abe,ben,cal,deb,eve,fin,max,ned,oak)
alias sshaf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.173'
alias sshbf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.174'
alias sshcf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.169'
alias sshdf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.168'
alias sshef='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.167'
alias sshff='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.149'
alias sshmf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.148'
alias sshnf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.147'
alias sshof='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.146'
alias sshpf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.1.145'

# Pablo aliases  (abe,ben,cal,deb,eve,fin,max,ned,oak)
alias ssha='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.14.100'
alias sshb='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.15.100'
alias sshc='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.16.100'
alias sshd='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.17.100'
alias sshe='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.18.100'
alias sshf='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.19.100'
alias sshm='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.20.100'
alias sshn='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.21.100'
alias ssho='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.22.100'
alias sshp='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -l student2680 192.168.23.100'

# -------------------------------------
# Aliases for pinging pavlab herons
# -------------------------------------
# Front-Seat Computer aliases  (abe,ben,cal,deb,eve,fin,max,ned,oak)
alias pingaf='ping 192.168.1.173'
alias pingbf='ping 192.168.1.174'
alias pingcf='ping 192.168.1.169'
alias pingdf='ping 192.168.1.168'
alias pingef='ping 192.168.1.167'
alias pingff='ping 192.168.1.149'
alias pingmf='ping 192.168.1.148'
alias pingnf='ping 192.168.1.147'
alias pingof='ping 192.168.1.146'
alias pingpf='ping 192.168.1.145'

# Pablo aliases  (abe,ben,cal,deb,eve,fin,max,ned,oak)
alias pinga='ping 192.168.14.100'
alias pingb='ping 192.168.15.100'
alias pingc='ping 192.168.16.100'
alias pingd='ping 192.168.17.100'
alias pinge='ping 192.168.18.100'
alias pingf='ping 192.168.19.100'
alias pingm='ping 192.168.20.100'
alias pingn='ping 192.168.21.100'
alias pingo='ping 192.168.22.100'
alias pingp='ping 192.168.23.100'

# Setup ssh for OSU resources
alias sshaa='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 gonzaeve@access.engr.oregonstate.edu'
alias sshan='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 gonzaeve@submit-a.hpc.engr.oregonstate.edu'
alias sshbn='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 gonzaeve@submit-b.hpc.engr.oregonstate.edu'
alias sshcn='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 gonzaeve@submit-c.hpc.engr.oregonstate.edu'
alias sshnn='ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 gonzaeve@submit.hpc.engr.oregonstate.edu'
