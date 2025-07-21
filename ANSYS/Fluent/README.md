# **Configuración Fluent**
## Tabla de Contenido
- [Pasos](#id-section1)
- [Generación del .cas](#id-section2)
- [Configuración del journal](#id-section3)
- [Configuración de los recursos del clúster](#id-section4)
-----

## **Pasos <div id='id-section1'/>**

Para la ejecución de Fluent en el clúster se requieren 3 archivos: 
1. .cas -> Generado en Fluent Workbrench: Contiene la información de la simulación
2. journal.jou -> Lee y ejecuta las instrucciones del .cas
3. .sh -> Es el archivo que contiene la configuración de los recursos del clúster y lee la configuración del journal

## **Generación del .cas <div id='id-section2'/>**
### 1. Guardar el proyecto con las configuraciones del caso:
- En la parte superior izquierda de clic en la pestaña file.
- Seleccione la opción *save project*
<img width="268" height="628" alt="image" src="https://github.com/user-attachments/assets/fdaeb2a4-205a-459d-81ad-02c5a535b09e" />

### 2. Exportar el archivo .cas
- En la parte superior izquierda de clic en la pestaña file.
- Seleccione la opción *Export*
- Seleccione la opción *Case*
<img width="420" height="627" alt="image" src="https://github.com/user-attachments/assets/588dfd2d-c476-4c38-af02-a643eadfe83c" />


## **Configuración del journal** <div id='id-section3'/>
Para la configuración de *journal* puede tomar como referencia los archivos adjuntos para los casos estacionario o transitorio según lo requiera, estos son los casos básicos. En caso que requiera mayor información, de clic al siguiente link:
> https://ansyshelp.ansys.com/account/secured?returnurl=/Views/Secured/corp/v242/en/flu_tcl/TUIx1-20002.html

## **Configuración de los recursos del clúster** <div id='id-section4'/>
Remitase a la siguiente carpeta *[Configuración Clúster](https://github.com/IMEC-HPC/Cluster/tree/main/Configuraci%C3%B3n%20Cluster)*

