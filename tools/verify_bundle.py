from pathlib import Path
import hashlib, sys
if len(sys.argv)!=2:
 print('usage: verify_bundle.py FILE'); raise SystemExit(2)
p=Path(sys.argv[1]); print(hashlib.sha256(p.read_bytes()).hexdigest(), p.name)
