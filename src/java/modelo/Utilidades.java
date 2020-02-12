package modelo;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

/**
 *
 * @author Sergio
 */
public class Utilidades {

    public static ArrayList<String> getPoblaciones(String fichero) {
        ArrayList<String> pueblos = new ArrayList<String>();

        try {

            BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(fichero), "utf-8"));
            String poblacion;
            try {

                while ((poblacion = buffer.readLine()) != null) {
                    pueblos.add(poblacion);
                }

                buffer.close();
            } catch (IOException e) {

            }

        } catch (FileNotFoundException | UnsupportedEncodingException e) {

        }
        return pueblos;
    }
}
