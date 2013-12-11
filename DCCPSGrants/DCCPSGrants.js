	function list(objLink,iDynamic)
	 {
		 // Set hidden form element to linkText
		 document.tenyears_pi.elements[0].value=objLink.childNodes[0].data;
		 document.tenyears_pi.elements[1].value=iDynamic;
		 // Link points to form action
		 objLink.href=document.tenyears_pi.action;
		 document.tenyears_pi.submit();
		 return true;
	 }
