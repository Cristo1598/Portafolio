# Test Cases Formales — Portafolio QA (Cristhofer Solis Jiménez)

Documento de Casos de Prueba redactados a partir de Historias de Usuario, respaldados por las ejecuciones reales realizadas en Postman sobre las APIs **reqres.in** y **JSONPlaceholder**.

---

## Historia de Usuario 1 — Gestión de Usuarios (reqres.in)

**Como** administrador del sistema
**Quiero** poder listar, consultar, crear, actualizar y eliminar usuarios a través de la API
**Para** gestionar la información de usuarios de forma confiable y consistente

**Criterios de aceptación:**
- El sistema debe listar usuarios existentes con código 200.
- El sistema debe devolver 404 cuando se consulta un usuario inexistente.
- El sistema debe permitir crear, actualizar y eliminar usuarios, devolviendo los códigos HTTP correspondientes.

---

### TC-001 — Listar usuarios (caso positivo)
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-01 Gestión de Usuarios |
| **Precondición** | API disponible; `x-api-key` configurada como variable de entorno `{{api_key}}` |
| **Pasos** | 1. Enviar `GET /api/users?page=2` |
| **Datos de prueba** | Parámetro `page=2` |
| **Resultado esperado** | Código 200 OK; respuesta contiene campo `data` con arreglo de usuarios |
| **Resultado obtenido** | 200 OK, `data` presente y válido |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Baja / Media |

### TC-002 — Consultar usuario existente (caso positivo)
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-01 Gestión de Usuarios |
| **Precondición** | Usuario con `id=2` existe en la API |
| **Pasos** | 1. Enviar `GET /api/users/2` |
| **Datos de prueba** | `id=2` |
| **Resultado esperado** | Código 200 OK; el `id` devuelto coincide con `2` |
| **Resultado obtenido** | 200 OK, `id` coincide |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Alta |

### TC-003 — Consultar usuario inexistente (caso negativo)
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-01 Gestión de Usuarios |
| **Precondición** | Usuario con `id=999` no existe |
| **Pasos** | 1. Enviar `GET /api/users/999` |
| **Datos de prueba** | `id=999` |
| **Resultado esperado** | Código 404 Not Found |
| **Resultado obtenido** | 404 Not Found |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Alta / Alta |

### TC-004 — Crear usuario
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-01 Gestión de Usuarios |
| **Precondición** | API disponible, autenticación válida |
| **Pasos** | 1. Enviar `POST /api/users` con body de nuevo usuario |
| **Datos de prueba** | `{ "name": "...", "job": "..." }` |
| **Resultado esperado** | Código 201 Created; los datos devueltos coinciden con los enviados |
| **Resultado obtenido** | 201 Created, datos coinciden |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Alta |

### TC-005 — Actualizar usuario
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-01 Gestión de Usuarios |
| **Precondición** | Usuario con `id=2` existe |
| **Pasos** | 1. Enviar `PUT /api/users/2` con campos actualizados |
| **Datos de prueba** | Campo `name`/`job` modificado |
| **Resultado esperado** | Código 200 OK; el campo actualizado coincide con lo enviado |
| **Resultado obtenido** | 200 OK, campo actualizado correctamente |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Media |

### TC-006 — Eliminar usuario
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-01 Gestión de Usuarios |
| **Precondición** | Usuario con `id=2` existe |
| **Pasos** | 1. Enviar `DELETE /api/users/2` |
| **Datos de prueba** | `id=2` |
| **Resultado esperado** | Código 204 No Content |
| **Resultado obtenido** | 204 No Content |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Media |

---

## Historia de Usuario 2 — Gestión de Posts (JSONPlaceholder)

**Como** usuario de la plataforma de contenidos
**Quiero** poder listar, consultar, crear, actualizar y eliminar publicaciones (posts) a través de la API
**Para** gestionar el contenido de forma confiable, incluyendo el manejo correcto de errores

**Criterios de aceptación:**
- El sistema debe listar posts existentes con código 200.
- El sistema debe devolver 404 al consultar un post inexistente.
- El sistema debe permitir crear, actualizar y eliminar posts, devolviendo los códigos HTTP correspondientes según el contrato propio de esta API.

---

### TC-007 — Listar posts (caso positivo)
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-02 Gestión de Posts |
| **Precondición** | API disponible (no requiere autenticación) |
| **Pasos** | 1. Enviar `GET /posts` |
| **Datos de prueba** | N/A |
| **Resultado esperado** | Código 200 OK; la lista contiene al menos un post |
| **Resultado obtenido** | 200 OK, lista con longitud > 0 |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Baja / Media |

### TC-008 — Consultar post existente (caso positivo)
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-02 Gestión de Posts |
| **Precondición** | Post con `id=1` existe |
| **Pasos** | 1. Enviar `GET /posts/1` |
| **Datos de prueba** | `id=1` |
| **Resultado esperado** | Código 200 OK; el `id` devuelto coincide con `1` |
| **Resultado obtenido** | 200 OK, `id` coincide |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Alta |

### TC-009 — Consultar post inexistente (caso negativo)
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-02 Gestión de Posts |
| **Precondición** | Post con `id=404` no existe |
| **Pasos** | 1. Enviar `GET /posts/404` |
| **Datos de prueba** | `id=404` |
| **Resultado esperado** | Código 404 Not Found; body vacío `{}` |
| **Resultado obtenido** | 404 Not Found, body `{}` |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Alta / Alta |

### TC-010 — Crear post
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-02 Gestión de Posts |
| **Precondición** | API disponible |
| **Pasos** | 1. Enviar `POST /posts` con body de nuevo post |
| **Datos de prueba** | `{ "title": "Prueba QA", "body": "...", "userId": 1 }` |
| **Resultado esperado** | Código 201 Created; el `title` devuelto coincide con el enviado |
| **Resultado obtenido** | 201 Created, `title` coincide |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Alta |

### TC-011 — Actualizar post
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-02 Gestión de Posts |
| **Precondición** | Post con `id=1` existe |
| **Pasos** | 1. Enviar `PUT /posts/1` con campos actualizados |
| **Datos de prueba** | `{ "id": 1, "title": "Título actualizado", ... }` |
| **Resultado esperado** | Código 200 OK; el `title` devuelto coincide con el actualizado |
| **Resultado obtenido** | 200 OK, `title` actualizado correctamente |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Media |

### TC-012 — Eliminar post
| Campo | Detalle |
|---|---|
| **Historia de Usuario** | HU-02 Gestión de Posts |
| **Precondición** | Post con `id=1` existe |
| **Pasos** | 1. Enviar `DELETE /posts/1` |
| **Datos de prueba** | `id=1` |
| **Resultado esperado** | Código 200 OK; body vacío `{}` |
| **Resultado obtenido** | 200 OK, body `{}` |
| **Estado** | ✅ Pass |
| **Severidad / Prioridad** | Media / Media |

---

## 💡 Nota de diseño

> Ambas historias comparten la misma estructura CRUD, pero **no asumen el mismo contrato de respuesta**: reqres.in devuelve `204 No Content` en DELETE, mientras que JSONPlaceholder devuelve `200 OK` con body vacío. Este documento refleja ese comportamiento verificado, no un supuesto estándar entre APIs — un principio clave de QA: **validar, no asumir**.

---

**Total de Test Cases documentados:** 12 (6 por historia) — 100% con estado *Pass*, verificados contra ejecuciones reales en Postman.
