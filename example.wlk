
object paquete{
	var estaPago = true

	method cambiarEstadoDePago() {
		estaPago = !estaPago
	}

	method estaPago() = estaPago

	method puedeSerEntregado(mensajero, destino) {
		return(self.estaPago() && destino.puedePasar(mensajero))
	}
}

object puente{

	method puedePasar(unMensajero) = unMensajero.peso() < 1000
	
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
	var pesoPropio = 80
	var transporte = camion

	method pesoPropio(_pesoPropio) {
		pesoPropio=_pesoPropio
	}

	method puedeLlamar() = false

	method transporte(_unTransporte) {
	  transporte = _unTransporte
	}

	method peso() = pesoPropio + transporte.peso()

}

object bici{

	const property peso = 10 
}

object camion {
  
  const peso = 500
  var acoples = 0
  const pesoAcople = 500
  
  method acoples(_acoples){
	acoples=_acoples
  }  

  method peso() = peso + (pesoAcople*acoples)

}