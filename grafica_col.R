library(ggplot2)
diabetes <- read.csv('data/diabetes.csv')

# Grafica Base
ggplot(diabetes)+
  geom_histogram(aes(x=chol), bins = 50)+
  labs(
    x='Colesterol',
    y='Personas',
    title = 'Distribución observada de los niveles de colesterol'
  )+
  theme_light()


# Cada barra de color diferente 
# Especificamos los colores que queremos por barra:
colores <- c('red',
             'blue',
             'purple',
             'orange',
             'yellow',
             '#42b0f5',
             '#42f5b3',
             '#e9eda4',
             'pink',
             'black')

ggplot(diabetes)+
  geom_histogram(aes(x=chol),bins = 10, fill = colores)+
  labs(
    x='Colesterol',
    y='Personas',
    title = "Distribución observada de los niveles de colesterol",
    subtitle = 'Grafica con colores personalizados'
  )+
  scale_fill_manual()+
  theme_light()



# Si agregamos fill = ..count.. nos colorea dependiendo de los valores
ggplot(diabetes)+
  geom_histogram(aes(x=chol,fill = ..count..), bins = 50)+
  labs(
    x='Colesterol',
    y='Personas',
    title = 'Distribución observada de los niveles de colesterol'
  )+
  theme_light()

# Se puede con los colores que queramos con scale_fill_gradient :)
# los argumentos 'high' y 'low' nos permiten establecer los rangos
ggplot(diabetes)+
  geom_histogram(aes(x=chol,fill = ..count..),bins = 50)+
  labs(
    x='Colesterol',
    y='Personas',
    title = "Distribución observada de los niveles de colesterol",
    subtitle = 'Grafica con colores personalizados'
  )+
  scale_fill_gradient(low = 'green', high = 'red')+
  theme_light()






# https://epidemiologia.salud.gob.mx/gobmx/salud/documentos/bol_camexc/2019/ce_2019_1ertrim.pdf

