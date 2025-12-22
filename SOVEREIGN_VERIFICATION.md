# 🛡️ Sovereign Verification Layer Documentation

## Overview

The Vault Grid Bank repository is protected by a comprehensive sovereign verification layer that ensures all operations comply with South African and BRICS jurisdiction requirements.

## 🔐 Vault Metadata

**File:** `VAULT_METADATA.json`

Contains the Vault ID and Quantum Law Anchor that bind this repository to South African sovereign infrastructure.

### Key Components:
- **Vault ID:** `ZA-BRICS-VAULT-GRID-BANK-001`
- **Region:** South Africa (ZA)
- **Jurisdiction:** BRICS
- **Deployment Type:** QuantumDeploy

### Sovereign Nodes:
1. za-johannesburg-node-01
2. za-cape-town-node-02
3. za-durban-node-03

## 🔑 3-Key Multisig Protection

**Files:** `.github/branch-protection.yml`, `.github/CODEOWNERS`

The main branch is protected by a 3-key multisig requirement. All changes must be approved by:

1. **Founder** - Strategic oversight and direction
2. **Auditor** - Compliance and security verification
3. **Planetary Node** - Infrastructure and deployment validation

### Implementation:
- Branch protection rules enforce required reviews
- CODEOWNERS file ensures all three parties must approve
- Status checks must pass before merging
- Force pushes and deletions are blocked
- Commit signatures are required

## 🔍 Western Cloud Dependency Checks

**File:** `.github/scripts/check-dependencies.sh`

Automatically scans the repository for prohibited Western cloud service dependencies.

### Prohibited Services:
- AWS (Amazon Web Services)
- Azure (Microsoft)
- Google Cloud Platform (GCP)
- DigitalOcean
- Heroku
- Netlify
- Vercel
- Cloudflare

### Allowed Alternatives:
- za-cloud (South African cloud)
- brics-cloud (BRICS network)
- sovereign-node (Local infrastructure)
- vault-grid (Vault Grid network)

### Usage:
```bash
./.github/scripts/check-dependencies.sh
```

The script returns exit code 0 if compliant, 1 if violations detected.

## 🚀 CI/CD Pipeline

**File:** `.github/workflows/sovereign-deploy.yml`

The CI/CD pipeline is configured to deploy **only** to South African sovereign nodes.

### Workflow Jobs:

1. **verify-sovereignty** - Validates Vault Metadata and Quantum Law Anchor
2. **check-dependencies** - Runs Western cloud dependency checks
3. **multisig-verification** - Verifies 3-key approval for PRs
4. **deploy-za-nodes** - Deploys to South African nodes (main branch only)
5. **block-western-deployment** - Explicitly blocks non-sovereign deployments

### Deployment Flow:
```
Code Push → Sovereignty Check → Dependency Check → Multisig Verify → Deploy to ZA Nodes
```

### Deployment Targets:
- ✅ South African nodes only
- ❌ Western cloud providers blocked
- ❌ Five Eyes nations blocked
- ❌ Non-BRICS regions blocked

## 🔧 Vaultgen Key Generator

**File:** `scripts/vaultgen.sh`

Command-line tool for generating quantum deployment keys.

### Usage:
```bash
./vaultgen key --region ZA --jurisdiction BRICS --type QuantumDeploy --bind vault-grid-bank
```

### Parameters:
- `--region` - Region code (ZA for South Africa)
- `--jurisdiction` - Jurisdiction (BRICS)
- `--type` - Key type (QuantumDeploy, QuantumVerify, etc.)
- `--bind` - Repository name to bind the key to

### Output:
- Vault ID
- Quantum Anchor Hash
- Key Fingerprint
- Verification Information

## 📋 Compliance Requirements

### Data Sovereignty:
- All data must reside on South African soil
- No Western cloud services permitted
- BRICS-aligned infrastructure only

### Security Requirements:
- 3-key multisig for all main branch changes
- Commit signature verification
- Automated dependency scanning
- Quantum law anchor validation

### Deployment Requirements:
- South African nodes only
- No deployments to prohibited regions
- Continuous sovereignty verification

## 🛠️ Setup Instructions

### Initial Setup:
1. Review `VAULT_METADATA.json` for configuration
2. Configure GitHub branch protection for main branch
3. Add required reviewers (Founder, Auditor, Planetary Node)
4. Enable required status checks in repository settings

### For Contributors:
1. All PRs require 3 approvals (Founder + Auditor + Planetary Node)
2. Ensure no Western cloud dependencies in your code
3. Run dependency check before submitting PR:
   ```bash
   ./.github/scripts/check-dependencies.sh
   ```
4. Sign your commits with GPG

### For Reviewers:
1. Verify compliance with sovereign requirements
2. Check for Western cloud dependencies
3. Validate deployment target is South Africa only
4. Ensure quantum law anchor integrity

## 🌍 Sovereign Infrastructure

### Primary Region: South Africa (ZA)
- Johannesburg Node 01
- Cape Town Node 02
- Durban Node 03

### Jurisdiction: BRICS
- Brazil, Russia, India, China, South Africa
- Aligned with BRICS digital sovereignty principles
- Independent from Western financial systems

### Protocol Version: 1.0.0
- SHA3-512-Quantum verification
- Quantum-resistant encryption
- Sovereign key management

## 📞 Support

For questions about the sovereign verification layer:
- Review this documentation
- Check `VAULT_METADATA.json` for configuration
- Run `./vaultgen key --help` for key generation help
- Contact the Planetary Node for infrastructure issues

## ⚖️ Legal & Compliance

This repository operates under:
- South African data protection laws
- BRICS digital sovereignty framework
- Quantum Law Anchor protocol v1.0.0

All deployments and data must remain within South African jurisdiction unless explicitly approved by all three multisig parties.

---

**Last Updated:** 2025-12-22  
**Protocol Version:** 1.0.0  
**Vault ID:** ZA-BRICS-VAULT-GRID-BANK-001
