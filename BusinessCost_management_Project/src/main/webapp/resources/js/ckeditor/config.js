CKEDITOR.editorConfig = function(config) {
	config.toolbarGroups = [ {
	 name : 'document',
	 groups : [ 'mode', 'document', 'doctools' ]
	}, {
	 name : 'clipboard',
	 groups : [ 'clipboard', 'undo' ]
	}, {
	 name : 'editing',
	 groups : [ 'find', 'selection', 'spellchecker', 'editing' ]
	}, {
	 name : 'forms',
	 groups : [ 'forms' ]
	}, {
	 name : 'basicstyles',
	 groups : [ 'basicstyles', 'cleanup' ]
	}, {
	 name : 'paragraph',
	 groups : [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ]
	}, {
	 name : 'links',
	 groups : [ 'links' ]
	}, {
	 name : 'insert',
	 groups : [ 'insert' ]
	}, {
	 name : 'styles',
	 groups : [ 'styles' ]
	}, {
	 name : 'colors',
	 groups : [ 'colors' ]
	}, {
	 name : 'tools',
	 groups : [ 'tools' ]
	}, {
	 name : 'others',
	 groups : [ 'others' ]
	}, {
	 name : 'about',
	 groups : [ 'about' ]
	} ];

	config.removeButtons = 'Source,Save,NewPage,ExportPdf,Preview,Print,Templates,Cut,Copy,Paste,PasteText,PasteFromWord,Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,Bold,Italic,Underline,Strike,Subscript,Superscript,CopyFormatting,RemoveFormat,NumberedList,BulletedList,Outdent,Indent,Blockquote,CreateDiv,JustifyLeft,JustifyCenter,JustifyBlock,JustifyRight,BidiLtr,BidiRtl,Language,Link,Unlink,Anchor,Image,Table,HorizontalRule,PageBreak,Iframe,Styles,Format,Maximize,ShowBlocks,About';
	config.enterMode = CKEDITOR.ENTER_BR;
	config.fillEmptyBlocks = false;
	CKEDITOR.dtd.$removeEmpty['i'] = false;
	config.height = 300;
	config.allowedContent = true;
	// config.toolbarCanCollapse = true;
	// config.filebrowserUploadUrl = '/ed/up.jsp';
};