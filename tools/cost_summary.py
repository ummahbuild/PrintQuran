import csv
from pathlib import Path
p=Path(__file__).parents[1]/'sourcing/BOM-master.csv'
with p.open() as f:
 rows=list(csv.DictReader(f))
lo=hi=0
for r in rows:
 a,b=map(float,r['1000u target USD'].split('-'))
 lo+=a*float(r['Qty']); hi+=b*float(r['Qty'])
print(f'1000-unit component target range (rough): ${lo:.2f}–${hi:.2f}; excludes payment terminal, certification, freight, tax, warranty.')
