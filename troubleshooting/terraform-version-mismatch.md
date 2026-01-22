# Technical Case Study: Terraform Version Parity

## Issue
Encountered an "Unreadable module directory" error and recursive folder loops during environment initialization.

## Root Cause Analysis
Identified a conflict between the project's required **Terraform v1.2** and the local **v1.11+** binary. The newer version generated incompatible metadata in the provider cache.

## Resolution
1. **Cache Purge:** Executed `rm -rf .terraform/ .terraform.lock.hcl`.
2. **Standardization:** Re-initialized using the organizational version constraint (v1.2).
3. **Success:** Restored F2 Foundation logic (EBS/SSM) and completed B3 Observability task.
