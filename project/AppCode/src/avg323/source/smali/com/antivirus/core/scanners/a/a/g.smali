.class public Lcom/antivirus/core/scanners/a/a/g;
.super Lcom/antivirus/core/scanners/a/a/h;


# instance fields
.field public e:Lcom/antivirus/core/scanners/a/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/antivirus/core/scanners/a/a/h;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    new-instance v0, Lcom/antivirus/core/scanners/a/a/b;

    invoke-direct {v0, p5, p6}, Lcom/antivirus/core/scanners/a/a/b;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/g;->e:Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/a/a/g;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/core/scanners/a/a/h;->a()V

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/g;->f:Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/a/a/b;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/g;->e:Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {v1, p3}, Lcom/antivirus/core/scanners/a/a/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/antivirus/core/scanners/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p3}, Lcom/antivirus/core/scanners/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)Z
    .locals 4

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

    iget-object v3, v0, Lcom/antivirus/core/scanners/a/a/a;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/antivirus/core/scanners/a/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3, v0}, Lcom/antivirus/core/scanners/a/a/g;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method
