.class final Lcom/keniu/security/f/x;
.super Ljava/lang/Object;
.source "UpdateData.java"

# interfaces
.implements Lcom/keniu/security/f/af;


# instance fields
.field final synthetic a:Ljava/io/FileOutputStream;

.field final synthetic b:Lcom/keniu/security/f/w;


# direct methods
.method constructor <init>(Lcom/keniu/security/f/w;Ljava/io/FileOutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/keniu/security/f/x;->b:Lcom/keniu/security/f/w;

    iput-object p2, p0, Lcom/keniu/security/f/x;->a:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/x;->a:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 131
    iget-object v0, p0, Lcom/keniu/security/f/x;->b:Lcom/keniu/security/f/w;

    invoke-static {v0}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/w;)Lcom/keniu/security/f/y;

    move-result-object v0

    iget v1, v0, Lcom/keniu/security/f/y;->c:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/keniu/security/f/y;->c:I

    .line 132
    iget-object v0, p0, Lcom/keniu/security/f/x;->b:Lcom/keniu/security/f/w;

    invoke-static {v0}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/w;)Lcom/keniu/security/f/y;

    move-result-object v0

    iget v1, v0, Lcom/keniu/security/f/y;->e:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/keniu/security/f/y;->e:I

    .line 134
    iget-object v0, p0, Lcom/keniu/security/f/x;->b:Lcom/keniu/security/f/w;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    iget-object v0, p0, Lcom/keniu/security/f/x;->b:Lcom/keniu/security/f/w;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0
.end method
