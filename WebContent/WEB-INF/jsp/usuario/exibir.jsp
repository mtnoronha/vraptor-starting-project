<head>
	<title>VRaptor | Usu&aacute;rio [exibir]</title>
</head>

<body>
	ID:		${entity.id}
	Nome:	${entity.nome}
	E-mail:	${entity.email}
	Senha:	${entity.senha} 
	Perfil:	${entity.perfil.label}

	(<a href="<c:url value='/usuario/${entity.id}/editar'/>">Editar</a> | <a href="<c:url value='/usuario'/>">Listagem</a>)

	<form action="<c:url value='/usuario/${entity.id}'/>" method="post">
		<input type="hidden" name="_method" value="delete"/>
		<input type="submit" value="Remover"/>
	</form><br/>

	<img src="<c:url value='/usuario/${entity.id}/image/170/150' />" alt="" /><br/><br/>

	<fieldset>
		<legend>Avatar</legend>
		<form action="<c:url value='/usuario/${entity.id}/image' />" enctype="multipart/form-data" method="post">
			<input type="file" name="file"/>
			<input type="submit" value="enviar"/>
		</form>
	</fieldset><br/><br/>

	<fieldset>
		<legend>Galeria</legend>
		<form action="<c:url value='/usuario/${entity.id}/gallery' />" enctype="multipart/form-data" method="post">
			<input type="hidden" name="entityImage.usuario.id" value="${entity.id}"/>
	
			Imagem:						<input type="file" name="file"/><br/>
			T&iacute;tulo:				<input type="text" name="entityImage.titulo"/><br/>
			Descri&ccedil;&atilde;o:	<input type="text" name="entityImage.descricao"/><br/><br/>
	
			<input type="submit" value="enviar"/>
		</form>
	</fieldset>
</body>