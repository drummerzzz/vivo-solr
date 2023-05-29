Não consegui fazer o vivo funcionar, estou tendo problemas para rodar o solr na versão correta só consegui rodar via docker mas a ultima versão já que as imagens disponíveis no docker hub atualmente estão apartir da versão 8, tentei criar uma imagem propia mas não rolou, erro tá no schema do vivo por ser uma versão antiga que só funciona na vesão 5 do solr


Erro 1
ERROR: Error CREATEing SolrCore 'vivocore': Unable to create core [vivocore] Caused by: solr.LatLonType


Erro 2
Cannot start service solr: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: exec: "solr-create": executable file not found in $PATH: unknown
