import java.util.Scanner;

public class BusquedaLineal {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        String[] productos = new String[5];
        double[] precios = new double[5];

        int opcion;
        String buscar;
        boolean encontrado;

        // Ingreso de productos y precios
        for (int i = 0; i < 5; i++) {

            System.out.print("Ingrese el nombre del producto " + (i + 1) + ": ");
            productos[i] = sc.nextLine();

            System.out.print("Ingrese el precio del producto: ");
            precios[i] = sc.nextDouble();
            sc.nextLine();
        }

        do {
            //Creacion de menu de opciones
            System.out.println("\n===== MENU =====");
            System.out.println("1. Buscar producto");
            System.out.println("2. Finalizar programa");
            System.out.print("Seleccione una opcion: ");
            opcion = sc.nextInt();
            sc.nextLine();

            switch (opcion) {

                case 1:

                    encontrado = false;

                    System.out.print("\nIngrese el producto a buscar: ");
                    buscar = sc.nextLine();

                    // Búsqueda lineal
                    for (int i = 0; i < 5; i++) {

                        if (productos[i].equalsIgnoreCase(buscar)) {

                            System.out.println("\nProducto encontrado");
                            System.out.println("Nombre: " + productos[i]);
                            System.out.println("Precio: $" + precios[i]);

                            encontrado = true;
                            break;
                        }
                    }

                    if (!encontrado) {
                        System.out.println("\nEl producto no existe.");
                    }

                    break;

                case 2:

                    System.out.println("\nPrograma finalizado.");
                    break;

                default:

                    System.out.println("\nOpcion invalida.");
            }

        } while (opcion != 2);

        sc.close();
    }
}
