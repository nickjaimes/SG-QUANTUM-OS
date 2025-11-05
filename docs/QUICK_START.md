# SG-QOS — Quick Start

## 1) Install
```bash
make install

make sim

make dash

make api

curl -X POST http://127.0.0.1:8000/ingest -H 'content-type: application/json' \
  -d '{
    "ts":"now",
    "entity":"device:gw-07",
    "features":{"temp":45.1,"temp_z":1.2,"temp_rolling_mean":43.0},
    "quality":{"dedup":true,"gap_fill":false}
  }'


---

# ✅ 3) Update README links

```bash
cat >> README.md << 'EOF'

---
## 🔥 Quick Commands

| Command | Meaning |
|--------|---------|
| `make install` | Install deps |
| `make sim` | Run simulator |
| `make dash` | Terminal UI |
| `make api` | Start local API |

See full: `docs/QUICK_START.md`

