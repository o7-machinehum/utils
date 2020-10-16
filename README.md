# Walker Utilities
Basically the cheat sheet to my life.


# Tech
It's short for Technology

## Links
[Buiilding w/ Embedded Linux](https://jaycarlson.net/embedded-linux/)

## Companies
[proxxi](https://www.crunchbase.com/organization/proxxi)

## Synths
[Transfer Function Derivation](https://rk2log.wordpress.com/2018/06/03/deriving-the-transfer-function-for-a-bridged-t-network-pt-1/)

## Radio
[Distance Of Transmission](https://en.wikipedia.org/wiki/Line-of-sight_propagation#Radio_horizon)

## Mech Stuff
[Mechanisms](http://507movements.com/)
[Python+openScad](https://github.com/SolidCode/SolidPython)
[Badass GearBox](https://hackaday.io/project/159404-opentorque-actuator)
[Wrist](https://www.thingiverse.com/thing:3941099)

## Worlds
- Prove that people want it
- Taking small steps toward the thing you want to do
- Seperate sleezy from not sleezy


# Buisness
## Entrepreneurial
https://www.kickstarter.com/blog/before-you-work-with-a-marketing-service-consider-this

- Think about projects that link togeather because if you want to something
badass it's going to take 40 years.

- Staying motivated 
    - You don't stay motivated you just do things when you need to do them

- Build self confidence by doing things people have never done before. 

## Call with Derek
- Vision and purpose of the company
    - Products fall out of this

- Build the community first and then kickstarter


## Applications
retext - viewing .md files


# Worlds / Realm.one
The advantage we have over other games is a hardcore networking effect. The MVP
should focus on emphasizing element itself. This means the ability to fork the
game and get started with a server fast.

## MVP (Game itself)
- Attacking
  - When a player does a melee attack, it should show through the sprites that
  look like they're attacking - NPC
  - Monster AI. They should walk around and attack players
- Player HP should be shown using hearts like zelda

The above two points would make a dynamic game. I think adding these two would
be interesting. Should be the next steps.

- Players exp
  - Players skills depend on their levels

## MVP (Interoperability)
- Load player info from blockchain
- Implementing neighboring servers.


# Arch Linux Stuff
## Starting the SSH server
systemctl start sshd.service

# CPU Stuff
[This](https://wiki.debian.org/CpuFrequencyScaling) contains a lot of really
good info regarding scaling CPU speeds.
- sudo cpupower frequency-info
- sudo cpupower frequency-set -g performance
    - Max all the time
- sudo cpupower frequency-set -g ondemand
    - Slow down when not needed
