# Ghost CMS 5.110

Este proyecto configura un entorno Docker para ejecutar Ghost CMS versión 5.110 usando SQLite como base de datos.

## Requisitos previos

- Docker
- Docker Compose

## Puertos

- Ghost: http://localhost:5110

## Ejecución

Para iniciar el entorno de Ghost:

```bash
# Usando Docker Compose
docker-compose up -d

# Verificar que está funcionando
docker-compose ps
```

## Acceso

- **Panel de administración**: http://localhost:5110/ghost
- **Sitio web**: http://localhost:5110

## Volúmenes

- `ghost_5110_content`: Almacena todos los datos de Ghost (temas, imágenes, base de datos SQLite)

## Detener el entorno

```bash
docker-compose down
```

## Eliminar completamente el entorno

Para eliminar el entorno incluyendo volúmenes:

```bash
docker-compose down -v
```

## Información adicional

- Ghost utiliza SQLite como base de datos por defecto
- El sitio está configurado en modo desarrollo
- Los datos se persisten incluso después de reiniciar el contenedor
- Esta versión incluye las características más recientes de Ghost 5.x

---

"NAME": "Grupo9"
"EMAIL": "grupo9@uniandes.edu.co",
"PASSWORD": "adminadmin",

---

---

  @user18 @web @F005 @E036
  Scenario: Create member with name just under boundary (190 characters - valid)
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I enter name "$string_190chars"
    And I enter email "$email_18"
    And I click on the Save button
    Then A edit page should appear on the screen
    
  @user19 @web @F005 @E037
  Scenario: Create member with name at near boundary (191 characters - valid)
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I enter name "$string_191chars" 
    And I enter email "$email_19"
    And I click on the Save button
    Then A edit page should appear on the screen
    
  @user20 @web @F005 @E038
  Scenario: Create member with name at boundary (192 characters - invalid)
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I enter name "$string_192chars"
    And I enter email "$email_20"
    And I click on the Save button
    Then I should see the member error message "Name is too long"
    
  @user21 @web @F005 @E039
  Scenario: Create member with name over boundary (more than 192 characters - invalid)
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I enter name "$string_192chars"
    And I enter email "$email_21"
    And I click on the Save button
    Then I should see the member error message "Name is too long"
---
