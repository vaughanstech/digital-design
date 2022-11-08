# Verilog Reference

## Setting Up Verilog File In Vivado
- In the **Sources** tab click the **plus** sign at the top of the window
- Select **Add or create design sources** click Next
- Select **Create File**
- Choose **Verilog** for the **File Type**
- Create a name for the project in the **File Name** field
- Select a good location for the project in the **File Location** field
- Click **OK**
- The File should now show up in the **Design Sources** section in the **Sources** window

## Simulating Verilog Circuit
- Go to **RTL Analysis** Menu
- Open Eleborated Design

## Gate-Level Modeling
| Name | Description | Usage |
|------|-------------|-------|
| **and** | $f = \mathcal{(a \cdot b ...)}$ | **and**(f, a, b, ...) |
| **nand** | $\mathcal{f = \overline{(a \cdot b ...)}}$ | **nand**(f, a, b, ...) |
| **or** | $\mathcal{f = (a + b + ....)}$ | **or**(f, a, b, ....) |
| **nor** | $\mathcal{f = \overline{(a + b + ....)}}$ | **nor**(f, a, b, ....) |
| **xor** | $\mathcal{f = a \oplus b \oplus ....)}$ | **xor**(f, a, b, ....) |
| **xnor** | $\mathcal{f = (a \odot b \odot ....)}$ | **xnor**(f, a, b, ....) |
| **not** | $\mathcal{f = \overline{a}}$ | **not**(f, a) |
| **buf** | $\mathcal{f = a}$ | **buf**(f, a) |
| **notif0** | $\mathcal{f = (!e ? \overline{a} : 'b_z)}$ | **notif0**(f, a, e) |

## Verilog Operators and Bit Lengths
| Category | Examples | Bit Length |
|----------|----------|------------|
| Bitwise | ~A, +A, -A, A & B, A $\vert$ B | L(A), MAX(L(A), L(B)) |
| Logical | !A, A&&B, A $\vert\vert$ B | 1 bit |
| Reduction | &A, ~&A, & $\vert$ A, ~ $\vert$ A, ^~A, ~^A | 1 bit |
| Relational | A == B, A! = B, A > B, A < B, A % B | 1 bit |
| Arithmetic | A + B, A - B, A * B, A / B, A % B | MAX(L(A), L(B)) |
| Shift | A << B, A >> B | L(A) |
| Concatenate | {A, ...., B} | L(A) + .... + L(B) |
| Replication | {B{A}} | B $\neq$ L(A) |
