# webeet-internship-observability
Refactor of a multicloud QA environment to implement Trace-Log correlation and resolve critical Terraform versioning conflicts (v1.2 vs v1.11+).
🚀 Project Overview
This project documents the stabilization of a multicloud QA environment and the implementation of advanced observability features during my tenure at webeet.io.

🛠️ Critical Technical Challenges
Environment Parity & Version Conflict Resolution: * The Issue: Identified a "Recursive Folder Loop" and "Unreadable module directory" error caused by a mismatch between the organizational standard (Terraform v1.2) and local environment versions (v1.11+).

The Fix: Force-purged corrupted .terraform symlinks and .terraform.lock.hcl to reset the provider cache and align with the legacy version requirements.

Infrastructure Restoration (Foundation F2): * Ensured data persistence by re-engineering modular code for AWS EBS Volume attachments and SSM Parameter paths (Postgres users, App image names).

Trace-Log Correlation (Observability B3): * Integrated OpenTelemetry with a Winston logging stack to inject trace_id into JSON logs, enabling seamless debugging across the ELK stack.
