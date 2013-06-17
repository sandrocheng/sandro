.class public Lcom/antivirus/core/scanners/ag;
.super Lcom/antivirus/core/scanners/e;


# instance fields
.field protected b:Z

.field protected c:Z

.field protected d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/core/scanners/e;-><init>()V

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->b:Z

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->c:Z

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/antivirus/core/scanners/ag;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/antivirus/core/scanners/ag;->d:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/antivirus/core/scanners/ag;->b:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public a(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/e;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->b:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->c:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->d:Z

    return-void
.end method

.method public a(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/e;->a(Ljava/io/ObjectOutputStream;)V

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->b:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->c:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->d:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/core/scanners/ag;->b:Z

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/ag;->e()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/core/scanners/ag;->c:Z

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/ag;->e()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->b:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/core/scanners/ag;->d:Z

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/ag;->e()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->d:Z

    return v0
.end method

.method protected e()V
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/antivirus/core/scanners/ag;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
