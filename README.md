# ISU-Gabon — Système numérique d'identité sanitaire interopérable

Application web de gestion de l'identité des patients pour le système de santé gabonais, construite autour d'un **Identifiant Sanitaire Unique (ISU)** au format `GAB-ANNÉE-XXXXXX`.

Ce projet est développé dans le cadre d'un mémoire de fin de cycle de **Licence 3 Génie Logiciel** à l'Institut Supérieur d'Informatique (ISI) de Dakar.

> **Mémoire :** *Conception et réalisation d'un système numérique d'identité sanitaire interopérable : cas du système de santé gabonais.*

## Contexte

Le système de santé gabonais souffre d'une fragmentation de l'information patient entre structures de soins, sans identifiant commun permettant de suivre un même patient d'un établissement à l'autre. Ce projet propose un module d'identité sanitaire unique et interopérable, en s'appuyant sur des données de terrain recueillies au CHU de Libreville et sur le cadre légal de la *loi n° 025/2023 du 09 juillet 2023* relative à la protection des données à caractère personnel.

## Objectifs (MVP)

1. Analyse des besoins à partir des données de terrain.
2. Conception de l'architecture du système.
3. Module de gestion de l'ISU patient.
4. API REST pour l'interopérabilité.
5. Interface web de consultation et de gestion.
6. Déploiement conteneurisé (Docker).

## Stack technique

| Domaine | Technologie |
|---|---|
| Framework backend | Laravel 12 |
| Authentification | Laravel Sanctum |
| Rôles & permissions | Spatie laravel-permission |
| Base de données | MySQL 8 |
| Frontend | React (Blade en repli) |
| Conteneurisation | Docker + Docker Compose |
| Qualité de code | SonarCloud |
| Tests API | Postman |
| Versionnage | Git / GitHub |
| Gestion de projet | Trello |

## Prérequis

- PHP >= 8.2
- Composer
- MySQL 8
- Node.js & npm (pour le frontend)
- Docker & Docker Compose (pour le déploiement)

## Installation (environnement local)

```bash
# 1. Cloner le dépôt
git clone https://github.com/bomajaeger/isu-gabon.git
cd isu-gabon

# 2. Installer les dépendances
composer install

# 3. Configurer l'environnement
cp .env.example .env
php artisan key:generate

# 4. Renseigner la connexion MySQL dans .env
# DB_CONNECTION=mysql
# DB_HOST=127.0.0.1
# DB_PORT=3306
# DB_DATABASE=isu_gabon
# DB_USERNAME=root
# DB_PASSWORD=

# 5. Créer la base puis migrer
php artisan migrate

# 6. Lancer le serveur de développement
php artisan serve
```

L'application est alors accessible sur `http://127.0.0.1:8000`.

## Déploiement Docker

*Section à compléter (sprint 0) — services `app` (PHP-FPM), `nginx` et `db` (MySQL) via Docker Compose.*

## Auteur & encadrement

- **Auteur :** Axel Youri NGOMAS MOUKADY
- **Encadreur :** M. Abdoulaye GAYE — ISI Dakar

---

*Projet académique — Institut Supérieur d'Informatique (ISI), Dakar.*
