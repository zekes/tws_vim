" Vim syntax file
" " Language: TWS (Tivoli Workload Scheduler)
" " Maintainer: David Selby
" " Latest Revision: 20 March 2017
"
" Filenames:    *.sched
if exists("b:current_syntax")
   finish
endif


syntax case ignore
" Jobs and Schedules:
syn keyword schedKey  abendprompt    after          as            at           autodocoff
syn keyword schedKey  autodocon      canc           carryforward  confirmed    continue
syn keyword schedKey  dateval        day[s]         day_of_week   deadline     description
syn keyword schedKey  docommand      draft          end           every        everyday
syn keyword schedKey  except         extraneous     fdignore      fdnext       fdprev
syn keyword schedKey  filename       follows        freedays      from         go
syn keyword schedKey  hi             i18n_id        i18n_priority interactive  isdefault
syn keyword schedKey  isuserjob      jobfilename    jobs          keyjob       keysched
syn keyword schedKey  limit          matching       members       needs        nextjob
syn keyword schedKey  notempty       number         on            onuntil      op
syn keyword schedKey  opens          order          previous      priority     prompt
syn keyword schedKey  qualifier      rccondsucc     recovery      relative     request
syn keyword schedKey  rerun          runcycle       sa            sameday      schedtime
syn keyword schedKey  schedule       scriptname     stop          streamlogon  su
syn keyword schedKey  tasktype       timezone       to            token_in     until
syn keyword schedKey  validfrom      validto        vartable      vt
syn keyword schedKey  workday[s]     weekday[s]
syn match  twsParm  /\^\w*\^/
" syn keyword comment  match 
syn match     twsHash         "#" display contains=pythonTodo,@Spell
syn match     twsComment      "^#.*$" display contains=pythonTodo,@Spell
syn match     twsComment      "*.*$" display contains=pythonTodo,@Spell
syn region    confString      start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline contains=twsParm
syn region    confString      start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline



highlight link twsComment  Comment
highlight link schedKey  Keyword
highlight link twsHash  Keyword
highlight link twsParm     PreCondit
highlight link twsParm     Structure
" highlight link schedKey  Comment
hi def link confString  String



"   calendar            cal            calendars
"   domain            dom            cpu
"   eventrule            erule | er            —
"   jobdefinition            jd            jobs
"   jobstream            js            sched
"   parameter            parm            parms
"   prompt            prom            prompts
"   resource            res            resources
"   user            user            users
"   variabletable            vt            —
"   workstation            ws            cpu
"   workstationclass            wscl            cpu

"   Table 23. List of reserved words when defining workstations
"   access            AIX            agent_type            autolink            behindfirewall
"   command            cpuclass            cpuname            description            domain
"   enabled            end            extraneous            for            force
"   fta            fullstatus            host            hpux            ignore
"   isdefault            linkto            maestro            manager            master
"   members            mpeix            mpev            mpexl            mpix
"   node            number            off            on            os
"   other            parent            posix            server            secureaddr
"   securitylevel            tcpaddr            timezone            type            tz
"   tzid            UNIX            using            vartable            wnt
