# GCP Cloud Journey ☁️

Hands-on cloud engineering journey on Google Cloud Platform.  
Building real systems: compute, storage, IAM, and data pipelines.

---

## 🚧 Progress

- [x] Day 1 – GCP setup (project, CLI)
- [x] Day 2 – VM + nginx (first deployment)
- [x] Day 3 – Cloud Storage (GCS, public hosting)
- [x] Day 4 – VM → GCS pipeline

---

## 🌐 Demo

### VM → GCS pipeline (Day 4)

Data generated on VM and uploaded to cloud storage:

https://storage.googleapis.com/logro-cloud-bucket-12345/data.txt

*(Content includes timestamp generated on VM)*

---

## 🧩 Architecture

```
VM (Compute Engine)
↓
generates data
↓
uploads to
↓
GCS (Cloud Storage)
↓
accessible via public URL
```

---

## 🧱 What I'm building

- Cloud infrastructure (Compute Engine)
- Storage layer (GCS)
- IAM and access control
- Data pipelines (compute → storage)
- Real-world debugging skills

---

## ⚙️ Tech Stack

- Google Cloud Platform (GCP)
- Compute Engine
- Cloud Storage (GCS)
- gcloud CLI / gsutil
- Linux (Ubuntu)

---

## 🐛 Debugging Experience

Real issues encountered and solved:

- IAM roles vs access scopes confusion
- Token behavior and VM restart
- Service account permissions
- CLI inconsistency (`gcloud storage` vs `gsutil`)
- Permission errors despite correct setup

---

## 🧠 Key Learnings

- Compute and storage are separate layers
- IAM is not enough — scopes and tokens matter
- Cloud systems require explicit access configuration
- Debugging is a core cloud engineering skill

---

## 🎯 Goal

Build a complete cloud-based system including:

- data ingestion  
- processing  
- storage  
- API layer  

Future milestone:
➡️ gaming data analytics service (TibiaData API)

---

## 📁 Structure

```
notes/
day-01.md
day-02.md
day-03.md
day-04.md

assets/
day2.png
```

---

## 🚀 Next Steps

- Automate pipeline (cron / scheduler)
- Infrastructure as Code (Terraform)
- Containers (Cloud Run / Kubernetes)
- Start real data project
