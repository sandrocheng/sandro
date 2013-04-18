.class final Lcom/keniu/security/main/br;
.super Landroid/os/AsyncTask;
.source "MainManager.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/bn;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/main/bn;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/main/br;-><init>(Lcom/keniu/security/main/bn;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/main/bn;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Integer;)Lcom/keniu/security/main/bp;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 215
    new-instance v1, Lcom/keniu/security/main/bp;

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/keniu/security/main/bp;-><init>(I)V

    .line 216
    :goto_0
    sget v0, Lcom/keniu/security/main/bn;->a:I

    if-ge v2, v0, :cond_0

    iget v0, v1, Lcom/keniu/security/main/bp;->a:I

    iget-object v3, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    invoke-static {v3}, Lcom/keniu/security/main/bn;->a(Lcom/keniu/security/main/bn;)I

    move-result v3

    if-le v0, v3, :cond_0

    .line 217
    iget-object v0, v1, Lcom/keniu/security/main/bp;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    .line 218
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->e()V

    .line 216
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 220
    :cond_0
    return-object v1
.end method

.method private a(Lcom/keniu/security/main/bp;)V
    .locals 2
    .parameter

    .prologue
    .line 225
    iget v0, p1, Lcom/keniu/security/main/bp;->a:I

    iget-object v1, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    invoke-static {v1}, Lcom/keniu/security/main/bn;->a(Lcom/keniu/security/main/bn;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    iget-object v1, p1, Lcom/keniu/security/main/bp;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/keniu/security/main/bn;->a(Lcom/keniu/security/main/bn;Ljava/util/List;)Ljava/util/List;

    .line 230
    iget-object v0, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    invoke-static {v0}, Lcom/keniu/security/main/bn;->b(Lcom/keniu/security/main/bn;)Lcom/keniu/security/main/bq;

    move-result-object v0

    iget v1, p1, Lcom/keniu/security/main/bp;->a:I

    invoke-interface {v0, v1}, Lcom/keniu/security/main/bq;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 212
    check-cast p1, [Ljava/lang/Integer;

    new-instance v1, Lcom/keniu/security/main/bp;

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/keniu/security/main/bp;-><init>(I)V

    :goto_0
    sget v0, Lcom/keniu/security/main/bn;->a:I

    if-ge v2, v0, :cond_0

    iget v0, v1, Lcom/keniu/security/main/bp;->a:I

    iget-object v3, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    invoke-static {v3}, Lcom/keniu/security/main/bn;->a(Lcom/keniu/security/main/bn;)I

    move-result v3

    if-le v0, v3, :cond_0

    iget-object v0, v1, Lcom/keniu/security/main/bp;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->e()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    check-cast p1, Lcom/keniu/security/main/bp;

    iget v0, p1, Lcom/keniu/security/main/bp;->a:I

    iget-object v1, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    invoke-static {v1}, Lcom/keniu/security/main/bn;->a(Lcom/keniu/security/main/bn;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    iget-object v1, p1, Lcom/keniu/security/main/bp;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/keniu/security/main/bn;->a(Lcom/keniu/security/main/bn;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/keniu/security/main/br;->a:Lcom/keniu/security/main/bn;

    invoke-static {v0}, Lcom/keniu/security/main/bn;->b(Lcom/keniu/security/main/bn;)Lcom/keniu/security/main/bq;

    move-result-object v0

    iget v1, p1, Lcom/keniu/security/main/bp;->a:I

    invoke-interface {v0, v1}, Lcom/keniu/security/main/bq;->a(I)V

    :cond_0
    return-void
.end method
