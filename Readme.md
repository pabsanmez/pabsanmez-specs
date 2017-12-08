# Como crear un CocoaPod.
## Private CocoaPod.

1. Comprobamos si el Podspec no tiene errores.
```
pod spec lint YourPod.podspec --verbose
```
2. Realizamos los commits oportunos, aumentamos el s.version del .podspec. Generamos un nuevo tag y lo pusheamos.
```
git tag x.y.z
git push -u origin master --tags
```

3. Creamos un git con que va a contener todos los podspecs que vamos a utilizar. (Solo la primera vez).
```
pod repo add pabsanmez-specs https://github.com/pabsanmez/pabsanmez-specs.git
````

4. Hacemos un push de la ultima version de nuestro podspec al repositorio que utiliza nuestro repositorio.
```
pod repo push pabsanmez-specs MyFirstPod.podspec
```
5.  En los proyectos que vamos a utilizar nuestro nuevo pod les indicaremos el repositorio del cual se va a obtener el podspec que apunta al nuevo pod.
```
source 'https://github.com/pabsanmez/pabsanmez-specs.git'
```
6.  Finalmente añadimos el pod a su podfile.
```
pod 'MyFirstPod', '~> x.y.z'
```

Para una informacion mas detallada [Raywenderlich tutorial](https://www.raywenderlich.com/99386/create-cocoapod-swift).

## Public CocoaPod.

**No se ha comprobado su correcto funcionamiento**
```
pod trunk register <YUOREMAIL> '<YOUR NAME>' — description='owner from macbook pro'
```
Recibiremos un email. Confirmar el correo recibido y ejecutar el siguiente comando.
```
pod trunk push YourPod.podspec
```

