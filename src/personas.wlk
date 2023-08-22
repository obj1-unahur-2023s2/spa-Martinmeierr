object olivia {
	var gradoConcentracion = 6
	var peso
	var tieneSed = false
	method peso() = peso
	method peso(nuevoPeso){
		peso = nuevoPeso
	}
	method gradoConcentracion() = gradoConcentracion
	method recibirMasajes() {
		gradoConcentracion = gradoConcentracion + 3
	}
	method discutir() {
		gradoConcentracion = gradoConcentracion - 3
	}
	method recibirBanioVapor() {
		peso = peso - 500
		tieneSed = true
	}
	
}
object bruno{
	var felicidad = true
	var gradoContractura = 0
	var tieneSed = false
	var peso = 55000
	method estaFeliz() = felicidad
	method peso() = peso
	method tieneSed() = tieneSed
	method recibirBanioVapor() {
		peso = peso - 500
		tieneSed = true
	}
	method tomarAgua() {
		tieneSed = false
	}
	method comerFideos() {
		peso = peso + 250
		tieneSed = true
	}
	method correr(){
		peso = peso - 300
	}
	method verNoticiero(){
		felicidad = false
	}
	method estaPerfecto(){
		return not tieneSed and felicidad and peso.between(50000,70000) 
	}
	method medioDiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
	method recibirMasaje() {
		gradoContractura = gradoContractura - 2
		if(gradoContractura < 0){
			gradoContractura = 1
		}
	}
	
}
object ramiro{
	var gradoContractura = 0
	var pielGrasa
	method gradoContractura() = gradoContractura
	method recibirMasaje() {
		gradoContractura = gradoContractura - 2
		if(gradoContractura < 0){
			gradoContractura = 1
		}
	}
	method recibirBanioVapor() {
		pielGrasa = false 
	}
	method comerBigMac(){
		pielGrasa = true
	}
	method bajarALaFosa(){
		pielGrasa = true
		gradoContractura = gradoContractura + 1
	}
	method jugarPaddle(){
		gradoContractura = gradoContractura + 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
	
	
}