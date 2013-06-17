.class public Lcom/antivirus/core/scanners/a/a/h;
.super Lcom/antivirus/core/scanners/a/a/b;


# instance fields
.field public f:Lcom/antivirus/core/scanners/a/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/antivirus/core/scanners/a/a/b;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/antivirus/core/scanners/a/a/b;

    invoke-direct {v0, p3, p4}, Lcom/antivirus/core/scanners/a/a/b;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/h;->f:Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/a/a/h;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/antivirus/core/scanners/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    move v1, v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/antivirus/core/scanners/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/core/scanners/a/a/b;->a()V

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/h;->f:Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/a/a/b;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/h;->f:Lcom/antivirus/core/scanners/a/a/b;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/h;->f:Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {v0, p2}, Lcom/antivirus/core/scanners/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/h;->f:Lcom/antivirus/core/scanners/a/a/b;

    iget-object v1, v1, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/a/a/a;

    iget-object v2, v0, Lcom/antivirus/core/scanners/a/a/a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/antivirus/core/scanners/a/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/antivirus/core/scanners/a/a/h;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method
