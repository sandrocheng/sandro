.class public Lcom/antivirus/core/scanners/s;
.super Lcom/antivirus/core/scanners/e;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/core/scanners/e;-><init>()V

    iput v0, p0, Lcom/antivirus/core/scanners/s;->c:I

    iput v0, p0, Lcom/antivirus/core/scanners/s;->d:I

    iput v0, p0, Lcom/antivirus/core/scanners/s;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/e;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/antivirus/core/scanners/s;->b:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/antivirus/core/scanners/s;->c:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/antivirus/core/scanners/s;->d:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/antivirus/core/scanners/s;->e:I

    return-void
.end method

.method public a(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/e;->a(Ljava/io/ObjectOutputStream;)V

    iget v0, p0, Lcom/antivirus/core/scanners/s;->b:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/antivirus/core/scanners/s;->c:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/antivirus/core/scanners/s;->d:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/antivirus/core/scanners/s;->e:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method
