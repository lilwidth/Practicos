Algoritmo CambioDeVariable
	Definir Variable1,Variable2,VariableAuxiliar Como Entero
	Escribir  "Por favor ingrese dos variables"
	Leer Variable1,Variable2
	Imprimir "Variable 1 inicial es: ",Variable1
	Imprimir "Variable 2 inicial es: ",Variable2
	VariableAuxiliar=Variable1
	Variable1=Variable2
	Variable2=VariableAuxiliar
	Imprimir "Variable 1 final es: ",Variable1
	Imprimir "Variable 2 final es: ",Variable2
FinAlgoritmo