# Metrics, non-functional requirements

## Success metrics (Prototype)
* **Categorization** quality: weighted F1-score > 80% on Data
* **Coverage**: ≥ 90% transactions have a category (either through model or rule)
* **Anomaly usefulness**: at least 3 of top-10 flagged items per month are judged “legit interesting” in manual review.
* **Latency**: API `/categorize` more than 50% < 500 ms for 1k transactions-batch locally
* **UI**: Dashboard loads in < 2s with 5k rows initially

## NFRs (non-functional requirements)
* Privacy: no real personally identifiable information ` (PII)`
* Reproducibility: `make repro` runs ETL+train+predict end-to-end on sample data.
* Portability: no GPU needed