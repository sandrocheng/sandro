.class final Lcom/keniu/security/f/q;
.super Ljava/lang/Object;
.source "UpdateApk.java"

# interfaces
.implements Lcom/keniu/security/f/af;


# instance fields
.field final synthetic a:Ljava/io/FileOutputStream;

.field final synthetic b:Lcom/keniu/security/f/p;


# direct methods
.method constructor <init>(Lcom/keniu/security/f/p;Ljava/io/FileOutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/keniu/security/f/q;->b:Lcom/keniu/security/f/p;

    iput-object p2, p0, Lcom/keniu/security/f/q;->a:Ljava/io/FileOutputStream;

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

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/q;->a:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 96
    iget-object v0, p0, Lcom/keniu/security/f/q;->b:Lcom/keniu/security/f/p;

    invoke-static {v0}, Lcom/keniu/security/f/p;->a(Lcom/keniu/security/f/p;)Lcom/keniu/security/f/r;

    move-result-object v0

    iget v1, v0, Lcom/keniu/security/f/r;->b:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/keniu/security/f/r;->b:I

    .line 97
    iget-object v0, p0, Lcom/keniu/security/f/q;->b:Lcom/keniu/security/f/p;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object v0, p0, Lcom/keniu/security/f/q;->b:Lcom/keniu/security/f/p;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0
.end method
