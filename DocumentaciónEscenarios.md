### Matriz unificada (incluye nuevos casos para **label**) – Formulario **“New member”**

| #  | name | email | label | note | Descripción del escenario de prueba                                    | Resultado esperado                                                             |
| -- | :--: | :---: | :---: | :--: | ---------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| 1  |   0  |   0   |   0   |   0  | Intentar guardar un miembro con **todos los campos vacíos**.           | Se muestra **“Please enter an email.”** y **no** se crea el registro.          |
| 2  |   0  |   0   |   0   |   1  | Solo se ingresa una **nota válida** (≤ 500 car.).                      | “Please enter an email.” – registro no creado.                                 |
| 3  |   0  |   0   |   1   |   0  | Solo se ingresa un **label válido**; nombre y email vacíos.            | “Please enter an email.” – registro no creado.                                 |
| 4  |   0  |   0   |   1   |   1  | **Label + nota válidos**, sin nombre ni email.                         | “Please enter an email.” – registro no creado.                                 |
| 5  |   0  |   1   |   0   |   0  | Solo **email válido**.                                                 | El miembro se crea y se localiza por email.                                    |
| 6  |   0  |   1   |   0   |   1  | Email válido + **nota válida**.                                        | Éxito; se localiza por email.                                                  |
| 7  |   0  |   1   |   1   |   0  | Email válido + **label válido**.                                       | Éxito; se localiza por email.                                                  |
| 8  |   0  |   1   |   1   |   1  | Email, label y nota válidos (nombre vacío).                            | Éxito; se localiza por email.                                                  |
| 9  |   1  |   0   |   0   |   0  | Solo **nombre válido**; sin email.                                     | “Please enter an email.”                                                       |
| 10 |   1  |   0   |   0   |   1  | Nombre y nota válidos; sin email.                                      | “Please enter an email.”                                                       |
| 11 |   1  |   0   |   1   |   0  | Nombre y label válidos; sin email.                                     | “Please enter an email.”                                                       |
| 12 |   1  |   0   |   1   |   1  | Nombre, label y nota válidos; sin email.                               | “Please enter an email.”                                                       |
| 13 |   1  |   1   |   0   |   0  | **Nombre y email válidos**, sin label ni nota.                         | Miembro creado; filtrable por nombre o email.                                  |
| 14 |   1  |   1   |   0   |   1  | Nombre, email y **nota válida**.                                       | Éxito; filtrable por nombre o email.                                           |
| 15 |   1  |   1   |   1   |   0  | Nombre, email y **label válido**.                                      | Éxito; filtrable por nombre o email.                                           |
| 16 |   1  |   1   |   1   |   1  | **Todos los campos válidos**.                                          | Éxito; filtrable por nombre o email.                                           |
| 17 |   1  |   2   |   1   |   1  | Email con **190 car.** (límite-1).                                     | Éxito; filtrable por email.                                                    |
| 18 |   1  |   2   |   1   |   1  | Email con **191 car.** (máx. permitido).                               | Éxito; filtrable por email.                                                    |
| 19 |   1  |   2   |   1   |   1  | Email con **192 car.** (> límite).                                     | “Email cannot be longer than 191 characters.” **o** “Invalid Email.”           |
| 20 |   1  |   2   |   1   |   1  | Email **> 192 < 500 car.**                                             | Mismo mensaje que caso 19.                                                     |
| 21 |   1  |   3   |   1   |   1  | Email con **caracteres especiales no permitidos**.                     | “Invalid Email.”                                                               |
| 22 |   1  |   3   |   1   |   1  | Email con **Naughty String**.                                          | “Invalid Email.”                                                               |
| 23 |   2  |   1   |   1   |   1  | Nombre con **190 car.**                                                | Éxito; filtrable.                                                              |
| 24 |   2  |   1   |   1   |   1  | Nombre con **191 car.** (máx.).                                        | Éxito; filtrable.                                                              |
| 25 |   2  |   1   |   1   |   1  | Nombre con **192 car.**                                                | “Name cannot be longer than 191 characters.”                                   |
| 26 |   2  |   1   |   1   |   1  | Nombre **> 192 < 500 car.**                                            | Mismo mensaje que caso 25.                                                     |
| 27 |   3  |   1   |   1   |   1  | Nombre con **caracteres especiales / emojis**.                         | Miembro creado; nombre mostrado tal cual.                                      |
| 28 |   3  |   1   |   1   |   1  | Nombre con **Naughty String / intento XSS**.                           | Miembro creado; texto almacenado como literal (sin ejecución).                 |
| 29 |   1  |   1   |   1   |   2  | **Nota con 499 car.**                                                  | Éxito; nota guardada completa.                                                 |
| 30 |   1  |   1   |   1   |   2  | **Nota con 500 car.**                                                  | Éxito; nota guardada completa.                                                 |
| 31 |   1  |   1   |   1   |   2  | **Nota con 501 car.**                                                  | “Note cannot be longer than 500 characters.”                                   |
| 32 |   1  |   1   |   1   |   2  | Nota **> 501 < 1000 car.**                                             | Mismo mensaje que caso 31.                                                     |
| 33 |   1  |   1   |   1   |   3  | Nota con **caracteres especiales / emojis**.                           | Miembro creado; nota intacta.                                                  |
| 34 |   1  |   1   |   1   |   3  | Nota con **Naughty String / HTML**.                                    | Miembro creado; HTML escapado (sin XSS).                                       |
| 35 |   0  |   4   |   0   |   0  | **Email con espacios iniciales/finales** (`"  user@example.com "`).    | Espacios se recortan; se guarda `user@example.com`.                            |
| 36 |   0  |   5   |   0   |   0  | **Email aliasado con “+”** (`user+promo@example.com`).                 | Válido; miembro creado, filtrable por email.                                   |
| 37 |   0  |   6   |   0   |   0  | **Email internacionalizado (IDN)** (`usuario@mañana.com`).             | Se almacena en Punycode; miembro creado.                                       |
| 38 |   4  |   1   |   0   |   0  | **Nombre con caracteres no latinos** (`李华`).                           | Miembro creado; nombre mostrado correctamente.                                 |
| 39 |   1  |   1   |   2   |   0  | **Múltiples labels** distintos.                                        | Miembro creado; todas las etiquetas quedan asociadas.                          |
| 40 |   1  |   7   |   1   |   0  | **Email duplicado** (ya existe).                                       | “Email already exists.” – no se crea duplicado.                                |
| 41 |   1  |   1   |   1   |   4  | **Nota con Markdown/HTML** (`<script>alert(1)</script>`).              | Miembro creado; contenido escapado, sin ejecutar scripts.                      |
| 42 |   1  |   1   |   3   |   0  | **Label con espacios iniciales/finales** (`"  vip  "`).                | Se crea; espacios recortados y label se guarda como `vip`.                     |
| 43 |   1  |   1   |   4   |   0  | **Label con Naughty String / XSS** (`"<img src=x onerror=alert(1)>"`). | Miembro creado; label se almacena escapado, no se ejecuta código.              |
| 44 |   1  |   1   |   5   |   0  | **Label duplicado** (mismo label agregado dos veces).                  | Miembro creado; solo se conserva **una** instancia del label (sin duplicados). |

---

#### Leyenda de valores de columnas

| Columna   | 0     | 1                           | 2                                  | 3                                      | 4                            | 5                       | 6             | 7         |
| --------- | ----- | --------------------------- | ---------------------------------- | -------------------------------------- | ---------------------------- | ----------------------- | ------------- | --------- |
| **name**  | Vacío | Texto válido (≤ 191 car.)   | Límite de longitud (190-191)       | Texto especial/emojis/XSS              | Caracteres no latinos        | –                       | –             | –         |
| **email** | Vacío | Formato válido (≤ 191 car.) | Longitud límite (190-191)          | Formato inválido/caracteres especiales | Con espacios a trim          | Con “+” alias           | IDN (Unicode) | Duplicado |
| **label** | Vacío | Uno válido                  | **2 = múltiples labels distintos** | **3 = label con espacios**             | **4 = Naughty String / XSS** | **5 = label duplicado** | –             | –         |
| **note**  | Vacío | Válida (≤ 500 car.)         | Límite (499-500)                   | > 500 car.                             | Texto especial/emojis        | Markdown/HTML           | –             | –         |

> Los guiones “–” indican que ese valor no aplica para la columna correspondiente.
