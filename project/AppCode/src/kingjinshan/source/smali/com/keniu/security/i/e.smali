.class final Lcom/keniu/security/i/e;
.super Landroid/os/FileObserver;
.source "FileDownWatcher.java"


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/keniu/security/i/c;


# direct methods
.method public constructor <init>(Lcom/keniu/security/i/c;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    .line 422
    const/16 v0, 0x388

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 423
    iput-object p2, p0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    .line 424
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 429
    and-int/lit16 v0, p1, 0xfff

    sparse-switch v0, :sswitch_data_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 433
    :sswitch_0
    iget-object v0, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    iget-object v0, p0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/keniu/security/i/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    invoke-static {v1}, Lcom/keniu/security/i/c;->a(Lcom/keniu/security/i/c;)Lcom/keniu/security/i/f;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/i/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :sswitch_1
    iget-object v0, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    iget-object v0, p0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/keniu/security/i/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    invoke-static {v1}, Lcom/keniu/security/i/c;->a(Lcom/keniu/security/i/c;)Lcom/keniu/security/i/f;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/i/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :sswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    iget-object v0, p0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/keniu/security/i/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    iget-object v1, v1, Lcom/keniu/security/i/c;->e:Lcom/keniu/security/i/t;

    iget-object v2, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    goto :goto_0

    .line 457
    :sswitch_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    iget-object v0, p0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/keniu/security/i/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    iget-object v1, v1, Lcom/keniu/security/i/c;->e:Lcom/keniu/security/i/t;

    iget-object v2, p0, Lcom/keniu/security/i/e;->b:Lcom/keniu/security/i/c;

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    goto :goto_0

    .line 429
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method
