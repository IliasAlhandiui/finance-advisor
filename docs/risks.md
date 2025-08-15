# Risks & Mitigations
* **Risk**: Synthetic ≠ real distribution --> overfitting, poor generalization
    * **Mitigation**:  Add rule-based backstops; stress test with noise; document limitations
* **Risk**: over-flagging anomalies --> anoying user
    * **Mitigation**:  show top-N per month; allow threshold slider
* **Risk**: categories drift overtime or get lost interarly
    * **Mitigation**:  log “unknown” merchants; simple active-learning loop later