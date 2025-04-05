/** First Wollok example */
object wollok {
	method howAreYou() {
		return 'I am Wolloktastic!'
	}
}

object paquete{
	var estaPago = true

	method cambiarEstadoDePago() {
		estaPago = !estaPago
	}

	method estaPago() = estaPago
}

object puente{

	method puedePasar(unMensajero) = paquete.estaPago && unMensajero.peso() < 1000
	
}

object matrix{

	method puedePasar(unMensajero) = unMensajero.puedeLlamar()
	
}

object chuck{
	method puedeLlamar() = true
	method peso() = 900
}

object neo{
	var credito = 0

	method peso() = 0

	method credito(_unCredito){
		credito = _unCredito
	}

	method puedeLlamar() = credito > 0
	
}

object lincoln{
	var pesoDeLincoln = 80
	var transporte = camion
	
	method puedeLlamar() = false

	method transporte(_unTransporte) {
	  transporte = _unTransporte
	}

	method peso() = pesoDeLincoln + transporte.peso()

}

object bici{

	const property peso = 10 
}

object camion {
  
  var peso = 500
  var acoples = 0
  var pesoAcople = 500
  
  method pesoAcople(_pesoAcople){
	pesoAcople= _pesoAcople
  }
  
  method acoples(_acoples){
	acoples=_acoples
  }  

  method peso() = peso + (pesoAcople*acoples)

}