# TP Relevé Bancaire XML

Ce projet est un TP (Travaux Pratiques) qui implémente un système de gestion de relevés bancaires utilisant les technologies XML. Il permet de structurer, valider et afficher des données bancaires en utilisant différents standards XML.

## 📁 Structure du Projet

Le projet contient les fichiers suivants :
```
├── releve_bancaire.xml     # Fichier XML contenant les données du relevé
├── releve_bancaire.dtd     # Définition de Type de Document (DTD)
├── releve_bancaire.xsd     # Schéma XML (XSD)
└── releve.xsl              # Feuille de style XSLT pour l'affichage HTML
```

## 📋 Description des Fichiers

### releve_bancaire.xml
Contient les données du relevé bancaire avec :
- Informations du compte (RIB)
- Date du relevé
- Solde
- Liste des opérations (crédits et débits)

### releve_bancaire.dtd
Définit la structure du document XML avec :
- Déclaration des éléments
- Déclaration des attributs
- Contraintes de structure

### releve_bancaire.xsd
Schéma XML qui définit :
- Types de données
- Structure des éléments
- Contraintes de validation
- Énumérations pour les types d'opérations

### releve.xsl
Feuille de style XSLT qui permet de :
- Afficher toutes les opérations en HTML
- Calculer les totaux (crédit et débit)
- Afficher uniquement les opérations de crédit (mode alternatif)


## 📊 Structure des Données

Le relevé bancaire contient les informations suivantes :
- **RIB** : Identifiant unique du compte
- **Date du relevé** : Date de génération
- **Solde** : Solde actuel du compte
- **Opérations** :
  - Date de l'opération
  - Type (CREDIT/DEBIT)
  - Montant
  - Description

## 🔍 Exemple de Données

```xml
<releve RIB="011112222333344445555666">
    <dateReleve>2021-11-10</dateReleve>
    <solde>14500</solde>
    <operations dateDebut="2021-01-01" dateFin="2021-01-30">
        <operation type="CREDIT" date="2021-01-01" montant="9000" description="Vers Espèce"/>
        ...
    </operations>
</releve>
```

## 🛠️ Technologies Utilisées

- XML
- DTD
- XSD (XML Schema)
- XSLT
- HTML

## 📝 Notes

- Les dates suivent le format YYYY-MM-DD
- Les types d'opérations sont limités à CREDIT et DEBIT
- Le RIB est obligatoire et doit être unique

## 👨‍💻 Auteur

Développé par Ayoub el hallaoui

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ayoub1elh)

---
© 2024 Ayoub el hallaoui - TP XML Relevé Bancaire