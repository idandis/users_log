# users_log
 
Vogliamo creare una semplice applicazione per il tracking del tempo speso in determinate attivita' da alcuni utenti che si possono registrare.

Base:
1. Scaffold applicazione rails 7 + ruby 3 (possibilmente con jsbundling + es build)
2. Sviluppare una Home/Dashboard con un layout riutilizzabile basato su Bootstrap 5 (https://getbootstrap.com/) (yarn/npm preferibile all'uso di una gemma)   e qualche semplice contenuto di benvenuto o demo
3. Introdurre gemma Devise e quindi di un sistema di autenticazione che permetta di ottenere un semplice sistema di login e registrazione nuovi utenti con   la funzionalita' di recupero password. Il modello utente dovra' chiamarsi User.
4. Fare in modo che il layout applicativo abbia una navbar in alto con:
   un buttondi login (se NON si e' autenticati) 
   l'email dell'utente loggato con un menu  a tendina e un link per il log-out. (se si e' autenticati) 
5. Fare scaffold di un modello TimeLog e di tutte le viste per la CRUD. Un TimeLog sara' necessariamente associato ad un solo utente (belongs to user) e      avra' i seguenti campi:
    - summary (una breve descrizione di massimo 240 caratteri - obbligatorio)
    - time_spent (un campo che permetta di memorizzare il tempo speso in minuti - obbligatorio)
    - log_date (un campo data che permetta di memorizzare sia la data che un orario di inizio attivita' - obbligatorio)
    - note (un campo testo lungo - NON obbligatorio)
Extra:
1. Creare un repository git su github (gratis) e salvare tutto il codice con vari commit che mostrino l'evoluzione dell'applicazione nel tempo (almeno un      commit per punto)
2. Evolvere le viste e controller dei TimeLog scafoldati al punto 5 per permettere ad un utente loggato di:
   visualizzare la lista dei suoi record TimeLog ordinati per il campo log_date con dei link per la visualizzazione e modifica
3. Fare in modo che il sistema permetta solo ad un utente loggato di vedere le pagine dei TimeLog e che ogni utente possa vedere ed operare SOLO sui propri    TimeLog (usare gemma Pundit)
   Creare un database seed con 2 utenti demo e qualche record TimeLog per entrambe gli utenti.
