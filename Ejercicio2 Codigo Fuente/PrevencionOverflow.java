public class PrevencionOverflow{

    public static void main(String[] args) {

        int[] numeros = {10, 20, 30, 40, 50, 60};

        // Recorrer el arreglo correctamente
        for (int i = 0; i < numeros.length; i++) { //Validacion correcta de los limites del arreglo

            System.out.println("Posicion " + i + ": " + numeros[i]);
        }

        /*
        Si el ciclo supera el tamaño del arreglo,
        el programa intentará acceder a una posición
        inexistente y producirá un error
        llamado ArrayIndexOutOfBoundsException.
        */
    }
}