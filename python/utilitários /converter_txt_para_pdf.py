"""
Converte um arquivo TXT para PDF.
Autor: Fábio Wlademir
"""
from fpdf import FPDF

arquivo = input("📄 Digite o caminho do .txt: ")
pdf = FPDF()
pdf.add_page()
pdf.set_font("Arial", size=12)
with open(arquivo, "r") as file:
    for linha in file:
        pdf.cell(200, 10, txt=linha.strip(), ln=True)
pdf.output("saida.pdf")
print("✅ PDF gerado como saida.pdf")
