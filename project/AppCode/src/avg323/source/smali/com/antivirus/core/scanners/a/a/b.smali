.class public Lcom/antivirus/core/scanners/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/util/regex/Pattern;

.field d:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Lcom/antivirus/core/scanners/a/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->c:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->d:Ljava/util/regex/Matcher;

    iget-object v0, p1, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/antivirus/core/scanners/a/a/b;->b:Z

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/a/a/b;->b:Z

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/a/a/b;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->c:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->c:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->d:Ljava/util/regex/Matcher;

    iput-object p1, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/antivirus/core/scanners/a/a/b;->b:Z

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->c:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/b;->c:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/antivirus/core/scanners/a/a/b;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/core/scanners/a/a/b;->d:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/b;->d:Ljava/util/regex/Matcher;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/b;->d:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    move v1, v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/antivirus/core/scanners/a/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method
