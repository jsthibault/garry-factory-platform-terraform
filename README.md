# Garry Factory Platform - Terraform

[🇫🇷 Français](#fr) | [🇬🇧 English](#en)

---

<a name="en"></a>
## 🇬🇧 English

Infrastructure as Code for the Garry Factory platform.

### 🏗️ Infrastructure

| Resource | Description |
|----------|-------------|
| **Hetzner Server** | `garry-factory-1` (cx22, Debian 13) |
| **DNS** | `garry-factory.fr` and `wedding-tools.fr` zones via Gandi |

### 📋 Prerequisites

- [Terraform](https://www.terraform.io/downloads) >= 1.0
- [Terraform Cloud](https://app.terraform.io/) account (org: `garry-factory`)
- API tokens: Hetzner Cloud, Gandi

### 🚀 Quick Start

```bash
# 1. Authenticate to Terraform Cloud
terraform login

# 2. Initialize
terraform init

# 3. Select workspace
terraform workspace select prod

# 4. Plan changes
terraform plan

# 5. Apply
terraform apply
```

### 📁 Structure

```
├── backend.tf       # Terraform Cloud configuration
├── providers.tf     # Hetzner + Gandi providers
├── variables.tf     # Input variables
├── compute.tf       # Hetzner server
├── dns.tf           # Gandi DNS records
└── prod.auto.tfvars # Production variables
```

### 🔐 Variables

Configured in Terraform Cloud (`garry-factory-platform-terraform-prod`):

| Variable | Type | Description |
|----------|------|-------------|
| `hcloud_token` | Sensitive | Hetzner API token |
| `gandi_personal_access_token` | Sensitive | Gandi PAT |

### 🔄 CI/CD

GitHub Actions automatically run:
- **PR**: `terraform fmt -check` + `terraform plan`
- **Push to main**: `terraform apply` (after TFC approval)

---

<a name="fr"></a>
## 🇫🇷 Français

Infrastructure as Code pour la plateforme Garry Factory.

### 🏗️ Infrastructure

| Ressource | Description |
|-----------|-------------|
| **Hetzner Server** | `garry-factory-1` (cx22, Debian 13) |
| **DNS** | Zones `garry-factory.fr` et `wedding-tools.fr` via Gandi |

### 📋 Prérequis

- [Terraform](https://www.terraform.io/downloads) >= 1.0
- Compte [Terraform Cloud](https://app.terraform.io/) (organisation: `garry-factory`)
- Tokens API : Hetzner Cloud, Gandi

### 🚀 Démarrage rapide

```bash
# 1. Authentification Terraform Cloud
terraform login

# 2. Initialisation
terraform init

# 3. Sélectionner le workspace
terraform workspace select prod

# 4. Planifier les changements
terraform plan

# 5. Appliquer
terraform apply
```

### 📁 Structure

```
├── backend.tf       # Configuration Terraform Cloud
├── providers.tf     # Providers Hetzner + Gandi
├── variables.tf     # Variables d'entrée
├── compute.tf       # Serveur Hetzner
├── dns.tf           # Enregistrements DNS Gandi
└── prod.auto.tfvars # Variables de production
```

### 🔐 Variables

Configurées dans Terraform Cloud (`garry-factory-platform-terraform-prod`) :

| Variable | Type | Description |
|----------|------|-------------|
| `hcloud_token` | Sensitive | Token API Hetzner |
| `gandi_personal_access_token` | Sensitive | PAT Gandi |

### 🔄 CI/CD

Les GitHub Actions exécutent automatiquement :
- **PR** : `terraform fmt -check` + `terraform plan`
- **Push main** : `terraform apply` (après approbation dans TFC)

---

## 📝 License / Licence

Private - Garry Factory
